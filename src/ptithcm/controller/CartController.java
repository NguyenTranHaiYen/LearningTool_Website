package ptithcm.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Cart;
import ptithcm.entity.CartItem;
import ptithcm.entity.Product;
import ptithcm.entity.User;

@Transactional
@Controller
public class CartController {

	@Autowired
	SessionFactory factory;

	List<CartItem> listProduct;

	public List<CartItem> getList() {

		HttpSession session = null;
		int id = (int) session.getAttribute("id");
		Session session1 = factory.getCurrentSession();
		String hql = "FROM CartItem WHERE cartid.userid = '" + id + "' AND cartid.isPaid='0'";
		Query query = session1.createQuery(hql);
		listProduct = query.list();
		return listProduct;

	}

	@RequestMapping(value = "cart")
	public String viewCart(ModelMap model, HttpSession session) {

		model.put("cart", new Cart());
		model.put("user", new User());
		String username = (String) session.getAttribute("username");

		if (username == null) {
			return "error";
		}
		int id = (int) session.getAttribute("id");
		
		
		Session session6 = factory.getCurrentSession();
		String hql6 = "FROM Cart WHERE userid.userId = '" + id +"'";
		Query query6 = session6.createQuery(hql6);
		List<Cart> l = query6.list();
		int n=l.size();
		model.addAttribute("number_cart", n);

		Session session1 = factory.getCurrentSession();
		String hql = "FROM Cart WHERE userid.userId = '" + id + "' AND isPaid='2'";
		Query query = session1.createQuery(hql);
		List<Cart> listCart = query.list();

		// tìm trong cart cái cart nào có id =2 thì in ra giỏ hàng và trả về trang giỏ
		// hàng đang chờ xử lí

		if (listCart.size() != 0) {

			Session session9 = factory.getCurrentSession();
			String h = "FROM CartItem WHERE cartid.userid = '" + id + "' AND cartid.isPaid='2'";
			Query q = session9.createQuery(h);
			listProduct = q.list();
			model.addAttribute("listItem", listProduct);

			int cart = 0;

			float money = 0;
			for (CartItem item : listProduct) {
				float discount1 = (float) item.getProid().getDiscount() / 100;

				float totaldiscount1 = item.getProid().getPrice() * discount1;

				float money1 = item.getProid().getPrice() - totaldiscount1;

				money += money1 * item.getQuantity();
				cart = item.getCartid().getCartId();

			}
			model.addAttribute("money", money);
			session.setAttribute("cart", cart);
			return "handling_cart";

		}

		// nếu ispaid không = 2 thì:

		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM CartItem WHERE cartid.userid = '" + id + "' AND cartid.isPaid='0'";
		Query query2 = session2.createQuery(hql2);
		listProduct = query2.list();
		model.addAttribute("listProduct", listProduct);

		float total = 0;
		for (CartItem number : listProduct) {
			float discount = (float) number.getProid().getDiscount() / 100;
			System.out.println(discount);
			float totaldiscount = number.getProid().getPrice() * discount;
			System.out.println(totaldiscount);
			float money = number.getProid().getPrice() - totaldiscount;
			System.out.println(money);
			total += money * number.getQuantity();
			System.out.println(total);
		}
		model.addAttribute("total", total);
		
		
		
		return "cart";

	}

	@RequestMapping(value = "add/{productId}", method = RequestMethod.GET)
	public String viewAdd(ModelMap mm, HttpSession session, @PathVariable("productId") int productId) {
		mm.put("user", new User());
		mm.put("cart", new Cart());

		String username = (String) session.getAttribute("username");

		if (username == null) {
			return "error";
		}

		return "redirect:/cart.html";
	}

	@RequestMapping(value = "add/{productId}", method = RequestMethod.POST)
	public String view(ModelMap mm, HttpSession session, @PathVariable("productId") int productId) {

		String username = (String) session.getAttribute("username");

		if (username == null) {
			return "error";
		}

		int id = (int) session.getAttribute("id");

		Session session3 = factory.getCurrentSession();
		String hql3 = "FROM Cart WHERE userid.userId = '" + id + "' AND isPaid='2'";
		Query query3 = session3.createQuery(hql3);
		List<Cart> listCart = query3.list();

		if (listCart.size() != 0) {
			return "redirect:/cart.html";
		}

		// tìm trong cartitem nếu có sản phẩm đó rồi thì tăng lên 1 đơn vị, nếu chưa có
		// tạo sản phẩm mới
		Session session1 = factory.getCurrentSession();
		String hql = "FROM CartItem WHERE cartid.userid = '" + id + "' AND cartid.isPaid='0'";
		Query query = session1.createQuery(hql);
		List<CartItem> listPro = query.list();

		// tìm trong list CartItem có CartItem nào có id = id product hiện tại k
		CartItem exist = null;
		for (CartItem number : listPro) {
			if (number.getProid().getProId() == productId) {
				exist = number;
			}
		}

		// nếu có thì xử lí tăng số lượng lên 1 đv
		if (exist != null) {
			int total = exist.getQuantity();
			exist.setQuantity(total + 1);
			session1.saveOrUpdate(exist);
		}

		// exist=null thì thêm mới
		else {
			String hql1 = "FROM Product WHERE proId= '" + productId + "'";
			Query query1 = session1.createQuery(hql1);
			Product x = (Product) query1.uniqueResult();

			String hql2 = "FROM Cart WHERE userid = '" + id + "' AND isPaid='0'";
			Query query2 = session1.createQuery(hql2);
			Cart y = (Cart) query2.uniqueResult();

			CartItem item = new CartItem();
			item.setQuantity(1);
			item.setProid(x);
			item.setCartid(y);
			session1.save(item);
		}

		return "redirect:/cart.html";
	}

	// delete chưa sửa
	@RequestMapping(value = "move/{proId}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable("proId") int proId, HttpSession session1) {

		int id = (int) session1.getAttribute("id");
		String username = (String) session1.getAttribute("username");
		if (username == null) {
			return "error";
		}

		Session session = factory.getCurrentSession();
		String hql = "FROM CartItem WHERE cartid.userid = '" + id + "' AND cartid.isPaid='0' AND proid.proId= '" + proId
				+ "'";
		Query query = session.createQuery(hql);
		CartItem k = (CartItem) query.uniqueResult();
		try {
			session.delete(k);
			// s.commit();

			model.addAttribute("listProduct", getList());
			return "redirect:/cart.html";

		} catch (Exception e) {
			// s.rollback();

		}
//		} finally {
//			session.close();
//		}
		return "redirect:/cart.html";
	}

	@RequestMapping(value = "increase/{productId}", method = RequestMethod.GET)
	public String setquantity(ModelMap mm, HttpSession session, @PathVariable("productId") int productId) {

		String username = (String) session.getAttribute("username");
		int id = (int) session.getAttribute("id");

		if (username == null) {
			return "error";
		}

		Session session1 = factory.getCurrentSession();
		String hql = "FROM CartItem WHERE cartid.userid = '" + id + "' AND cartid.isPaid='0' AND proid.proId= '"
				+ productId + "'";
		Query query = session1.createQuery(hql);
		CartItem z = (CartItem) query.uniqueResult();

		int total2 = z.getQuantity();
		z.setQuantity(total2 + 1);

		session1.saveOrUpdate(z);

		return "redirect:/cart.html";
	}

	@RequestMapping(value = "decrease/{productId}", method = RequestMethod.GET)
	public String decreaseItem(ModelMap mm, HttpSession session, @PathVariable("productId") int productId) {

		String username = (String) session.getAttribute("username");
		int id = (int) session.getAttribute("id");

		if (username == null) {
			return "error";
		}

		Session session1 = factory.getCurrentSession();
		String hql = "FROM CartItem WHERE cartid.userid = '" + id + "' AND cartid.isPaid='0' AND proid.proId= '"
				+ productId + "'";
		Query query = session1.createQuery(hql);
		CartItem z = (CartItem) query.uniqueResult();

		int total2 = z.getQuantity();
		if (total2 > 1) {
			z.setQuantity(total2 - 1);
		}
		session1.saveOrUpdate(z);

		return "redirect:/cart.html";
	}

	@RequestMapping(value = "confirm")
	public String confirm(ModelMap model, HttpSession session) {

		model.put("cart", new Cart());
		model.put("user", new User());
		String username = (String) session.getAttribute("username");

		if (username == null) {
			return "error";
		}
		int id = (int) session.getAttribute("id");
		Session session1 = factory.getCurrentSession();
		String hql = "FROM CartItem WHERE cartid.userid = '" + id + "' AND cartid.isPaid='0'";
		Query query = session1.createQuery(hql);
		List<CartItem> list = query.list();
		model.addAttribute("list", list);

		int cart1 = 0;

		float money = 0;
		for (CartItem item : list) {
			float discount1 = (float) item.getProid().getDiscount() / 100;

			float totaldiscount1 = item.getProid().getPrice() * discount1;

			float money1 = item.getProid().getPrice() - totaldiscount1;

			money += money1 * item.getQuantity();
			cart1 = item.getCartid().getCartId();

		}
		model.addAttribute("money", money);
		session.setAttribute("cart1", cart1);
		return "confirm_cart";
	}

	@RequestMapping(value = "handling")
	public String handling(ModelMap model, HttpSession session) {

		model.put("cart", new Cart());
		model.put("user", new User());
		String username = (String) session.getAttribute("username");

		if (username == null) {
			return "error";
		}
		int id = (int) session.getAttribute("id");
		return "handling_cart";
	}

	// nếu nhấn nút thanh toán thì chuyển trạng thái ispaid=2
	@RequestMapping(value = "buy/{cart}")
	public String buyCart(ModelMap model, HttpSession session, @PathVariable("cart") int cart) {

		model.put("cart", new Cart());
		model.put("user", new User());
		String username = (String) session.getAttribute("username");

		if (username == null) {
			return "error";
		}
		Session session1 = factory.getCurrentSession();
		String hql = "FROM Cart WHERE cartId = '" + cart + "'";
		Query query = session1.createQuery(hql);
		Cart h = (Cart) query.uniqueResult();

		h.setIsPaid(2);
		session1.saveOrUpdate(h);

		return "redirect:/cart.html";
	}

	@RequestMapping(value = "history/{id}")
	public String viewHistory(ModelMap model, HttpSession session, @PathVariable("id") int id) {
		model.put("cart", new Cart());
		model.put("user", new User());
		String username = (String) session.getAttribute("username");

		if (username == null) {
			return "error";
		}
		Session session1 = factory.getCurrentSession();
		
		Query query = session1.createQuery("FROM Cart WHERE userid.userId= '" + id+"'");
		List<Product> listCart = query.list();
		listCart.remove(listCart.size()-1);
	
		model.addAttribute("listCart", listCart);
	return "history";
	}
	
	@RequestMapping(value = "history_cart/{idCart}")
	public String viewHistoryCart(ModelMap model, HttpSession session, @PathVariable("idCart") int idCart) {
		
		
		model.put("cart", new Cart());
		model.put("user", new User());
		String username = (String) session.getAttribute("username");

		if (username == null) {
			return "error";
		}
		
		Session session1 = factory.getCurrentSession();
		String hql2 = "FROM CartItem WHERE cartid.cartId = '" + idCart + "'";
		Query query2 = session1.createQuery(hql2);
		List<CartItem> listItem =  query2.list();
		model.addAttribute("listItem", listItem);
		
		float total=0;
		for (CartItem number : listItem) {
			float discount=(float)number.getProid().getDiscount()/100;
			System.out.println(discount);
			float totaldiscount=number.getProid().getPrice()*discount;
			System.out.println(totaldiscount);
			float money=number.getProid().getPrice()-totaldiscount;
			System.out.println(money);
			total+=money*number.getQuantity();
			System.out.println(total);
		}
		model.addAttribute("total", total);
		return "history_cart";

	}
}
