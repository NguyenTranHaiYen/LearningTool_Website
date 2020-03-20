package ptithcm.controller;

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
public class ManageController {
	
	@Autowired
	SessionFactory factory;
	
	
	List<Product> listProduct;
	public List<Product> getListProduct()
	{
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		listProduct=query.list();
		return listProduct;
	}
	
	
	@RequestMapping(value = "manage", method = RequestMethod.GET)
	public String viewLogin(ModelMap mm, HttpSession session1) {
		String username=(String) session1.getAttribute("username");
    	int role=(Integer) session1.getAttribute("roleid");
		if(username==null||role!=1) {
			return "error";
		}
		mm.put("user", new User());
		return "manage";
	}
	@RequestMapping(value = "manage", method = RequestMethod.POST)
	public String manages(ModelMap model,HttpSession session1) {
		Session session = factory.getCurrentSession();
		String username=(String) session1.getAttribute("username");
    	int role=(Integer) session1.getAttribute("roleid");
		if(username==null||role!=1) {
			return "error";
		}
		model.put("user", new User());
		
		
//		int role=
		return "manage";
	}
	
	
	
	

	@RequestMapping(value="manageproduct")
	public String manageProductList(ModelMap model, HttpSession session1) {
		
		Session session = factory.getCurrentSession();
		model.put("user", new User());
		
		String username=(String) session1.getAttribute("username");
    	int role=(Integer) session1.getAttribute("roleid");
		if(username==null||role!=1) {
			return "error";
		}

		Query query = session.createQuery("FROM Product");
		List<Product> list = query.list();
		int totalitems=list.size();
		model.addAttribute("listProduct", list);
		model.addAttribute("totalitems", totalitems);
	
		return "manageproduct";
	}

	
	
	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert(ModelMap model, HttpSession session1) {
		String username=(String) session1.getAttribute("username");
    	int role=(Integer) session1.getAttribute("roleid");
		if(username==null||role!=1) {
			return "error";
		}
		model.addAttribute("product", new Product());
		return "manageproduct_form";
	}

	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("product") Product product, HttpSession session1) {
		
		String username=(String) session1.getAttribute("username");
    	int role=(Integer) session1.getAttribute("roleid");
		if(username==null||role!=1) {
			return "error";
		}
		
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.saveOrUpdate(product);
			t.commit();
			model.addAttribute("message", "Thêm thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm thất bại !");
		} finally {
			session.close();
		}
		return "manageproduct_form";
	}
	
	
	
	@RequestMapping("{proId}")
	public String edit(ModelMap model, @PathVariable("proId") int proId, HttpSession session1) {
		
		String username=(String) session1.getAttribute("username");
    	int role=(Integer) session1.getAttribute("roleid");
		if(username==null||role!=1) {
			return "error";
		}
		
		Session session = factory.getCurrentSession();
		Product product = (Product) session.get(Product.class, proId );
		model.addAttribute("product", product);
		//model.addAttribute("users", getUsers());
		return "manageproduct_update";
	}
	
	
	@RequestMapping(value= "delete/{proId}",method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable("proId") int proId, HttpSession session1) {
		
		String username=(String) session1.getAttribute("username");
    	int role=(Integer) session1.getAttribute("roleid");
		if(username==null||role!=1) {
			return "error";
		}
		
		Session session = factory.getCurrentSession();
		Product product = (Product) session.get(Product.class, proId );
		//model.addAttribute("user", user);
		//Transaction s = session.beginTransaction();
		try {
			session.delete(product);
			//s.commit();
			model.addAttribute("message", "Xóa thành công !");
			model.addAttribute("listProduct", getListProduct());
			return "manageproduct";
			
		} catch (Exception e) {
			//s.rollback();
			model.addAttribute("message", "Xóa thất bại ! Sản phẩm có thể đang ở trong đơn hàng đang đặt mua.");
		}
//		} finally {
//			session.close();
//		}
		return "manageproduct";
	}
	
	@RequestMapping(value="managecart")
	public String managecart(ModelMap model, HttpSession session1) {

		Session session = factory.getCurrentSession();
		model.put("user", new User());
		
		String username=(String) session1.getAttribute("username");
    	int role=(Integer) session1.getAttribute("roleid");
		if(username==null||role!=1) {
			return "error";
		}

		Query query = session.createQuery("FROM Cart");
		List<Product> listCart = query.list();
		int totalitems=listCart.size();
		model.addAttribute("listCart", listCart);
		model.addAttribute("totalitems", totalitems);
		
		return "manage_cart";
	}
	
	@RequestMapping(value="cart/{cartid}")
	public String chart(ModelMap model, @PathVariable("cartid") int cartid, HttpSession session1) {
		
		model.put("user", new User());
		
		String username=(String) session1.getAttribute("username");
    	int role=(Integer) session1.getAttribute("roleid");
		if(username==null||role!=1) {
			return "error";
		}
		int id=cartid;
		Session session = factory.getCurrentSession();
		String hql = "FROM Cart WHERE cartId = '" + cartid + "'";
		Query query = session.createQuery(hql);
		Cart h = (Cart) query.uniqueResult();
		int isPaid=h.getIsPaid();
		model.addAttribute("isPaid", isPaid);
		model.addAttribute("id",id);
		
		Session session2 = factory.getCurrentSession();
		String hql2 = "FROM CartItem WHERE cartid.cartId = '" + id + "'";
		Query query2 = session2.createQuery(hql2);
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
		
		return "chart";
	}
	
	@RequestMapping(value="accept/{cartid}")
	public String accept(ModelMap model, @PathVariable("cartid") int cartid, HttpSession session1) {
		
		model.put("user", new User());
		
		String username=(String) session1.getAttribute("username");
    	int role=(Integer) session1.getAttribute("roleid");
		if(username==null||role!=1) {
			return "error";
		}
		
		Session session = factory.getCurrentSession();
		String hql = "FROM Cart WHERE cartId = '" + cartid + "'";
		Query query = session.createQuery(hql);
		Cart h = (Cart) query.uniqueResult();
		h.setIsPaid(3);
		User userId=h.getUserid();
		
		Cart cart=new Cart();
		cart.setUserid(userId);
		cart.setIsPaid(0);
		long millis=System.currentTimeMillis();  
		java.sql.Date date=new java.sql.Date(millis);  
		cart.setBuyDate(date); 
		session.save(cart);
		session.saveOrUpdate(h);
		
		return "redirect:/cart/{cartid}.html";
	}
	
	@RequestMapping(value="finish/{id}")
	public String finish(ModelMap model, @PathVariable("id") int id, HttpSession session1) {
		
		model.put("user", new User());
		
		String username=(String) session1.getAttribute("username");
    	int role=(Integer) session1.getAttribute("roleid");
		if(username==null||role!=1) {
			return "error";
		}
		
		Session session = factory.getCurrentSession();
		String hql = "FROM Cart WHERE cartId = '" + id + "'";
		Query query = session.createQuery(hql);
		Cart h = (Cart) query.uniqueResult();
		h.setIsPaid(1);
		session.saveOrUpdate(h);
		
		return "redirect:/cart/{id}.html";
	}
}