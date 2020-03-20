package ptithcm.controller;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Transactional
@Controller
public class SearchController {
	@Autowired
	SessionFactory factory;
	
//	@RequestMapping(value = "search", method = RequestMethod.POST)
//	public String search() {
//		return 
//	}
}
