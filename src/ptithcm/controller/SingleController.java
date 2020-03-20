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

import ptithcm.entity.Product;
import ptithcm.entity.User;

@Transactional
@Controller
public class SingleController {

	@Autowired
	SessionFactory factory;

	@RequestMapping("single/{proId}")
	public String getSinglePage(ModelMap model, @PathVariable("proId") int proId) {
		model.put("user", new User());
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		Query query = session.createQuery("FROM Product WHERE proId =:id");
		query.setParameter("id", proId);
		Product x = (Product) query.uniqueResult();
		model.addAttribute("product", x);
		
		int cate=x.getCategory().getCateId();
		query = session.createQuery("FROM Product WHERE category.cateId ='"+cate+"'");
		List<Product> list = query.list();
		List<Product> listStart = list.subList(0, 4);
		model.addAttribute("lProduct", listStart);

		return "single";

	}

}
