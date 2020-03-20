package ptithcm.controller;

import java.util.Collections;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.*;
import sun.security.util.Length;

@Transactional
@Controller
public class HomeController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("index")
	public String indexNotebook(ModelMap model) {
		
		Session session = factory.getCurrentSession();
		
		String hql = "FROM Product WHERE category.cateId ='1'";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		Collections.reverse(list);
		List<Product> listStart = list.subList(0, 8);
		model.addAttribute("productsNotebook", listStart);
		
		hql = "FROM Product WHERE category.cateId ='2'";
		query = session.createQuery(hql);
		list = query.list();
		Collections.reverse(list);
		listStart = list.subList(0, 8);
		model.addAttribute("productsPen", listStart);
		
		hql = "FROM Product WHERE category.cateId ='4'";
		query = session.createQuery(hql);
		list = query.list();
		Collections.reverse(list);
		listStart = list.subList(0, 8);
		model.addAttribute("productsRuler", listStart);
		
		hql = "FROM Product WHERE category.cateId ='3'";
		query = session.createQuery(hql);
		list = query.list();
		Collections.reverse(list);
		listStart = list.subList(0, 8);
		model.addAttribute("productsBox", listStart);
		
		
		model.put("user", new User());
		model.put("cart", new Cart());
		return "index";
	}

	
	public List<Product> getListNav(int start, int limit) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Query query = session.createQuery("FROM Product");
			query.setFirstResult(start);
			query.setMaxResults(limit);
			List<Product> list = query.list();
			t.commit();
			return list;
		} catch (Exception ex) {
			if (t != null) {
				t.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		return null;
	}

	public int totalItem() {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Query query = session.createQuery("SELECT count(*) FROM Product");
			Long obj = (Long) query.uniqueResult();
			t.commit();
			return obj.intValue();
		} catch (Exception ex) {
			if (t != null) {
				t.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		return 0;
	}

	public List<Product> getListNavByCate(int start, int limit, int id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Query query = session.createQuery("FROM Product WHERE category.cateId =:id");
			query.setParameter("id", id);
			query.setFirstResult(start);
			query.setMaxResults(limit);
			List<Product> list = query.list();
			t.commit();
			return list;
		} catch (Exception ex) {
			if (t != null) {
				t.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		return null;
	}

	public int totalItemByCate(int id) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			Query query = session.createQuery("SELECT count(*) FROM Product WHERE category.cateId =:id");
			query.setParameter("id", id);
			Long obj = (Long) query.uniqueResult();
			t.commit();
			return obj.intValue();
		} catch (Exception ex) {
			if (t != null) {
				t.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		return 0;
	}

	
	

	@RequestMapping(value = "dungcuhoctap/{id}/{page}", method = RequestMethod.GET)
	public String viewProductListByPageAndCate(ModelMap model, @PathVariable("id") int id,
			@PathVariable("page") int page) {

		int lineCount = 8;

		Session session = factory.getCurrentSession();

		String hqlCate = "FROM Category";
		Query queryCate = session.createQuery(hqlCate);
		List<Category> listCate = queryCate.list();
		model.addAttribute("categories", listCate);

//		String hqlUser = "FROM User";
//		Query queryUser = session.createQuery(hqlUser);
//		List<User> listUser = queryUser.list();
//		model.addAttribute("users", listUser);

		model.put("user", new User());
		model.put("cart", new Cart());
		
		model.addAttribute("listProduct", getListNavByCate((page - 1) * lineCount, lineCount, id));
		// số sản phẩm theo loại mặt hàng chia hết cho số sản phẩm trong 1 trang => số trang= chính nó. ngược lại số trang = nó+1
		model.addAttribute("totalPage", (totalItemByCate(id) % lineCount == 0) ? totalItemByCate(id) / lineCount
				: totalItemByCate(id) / lineCount + 1);
		model.addAttribute("currentPage", page);
		model.addAttribute("cateId", id);
		
		
		Category category = (Category) session.get(Category.class, id);
		model.addAttribute("category", category);

		return "dungcuhoctap";
	}
	
	
	
}
