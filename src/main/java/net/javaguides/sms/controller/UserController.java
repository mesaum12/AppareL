package net.javaguides.sms.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import net.javaguides.sms.entity.Apparel;
import net.javaguides.sms.service.ApparelService;

@Controller
public class UserController {

	
	private ApparelService apparelService;

	public UserController(ApparelService apparelService) {
		super();
		this.apparelService = apparelService;
	}

	
	//the main shopping page visible to the user
	
	@GetMapping("/user/apparels/shop")
	public String listAllApparels(Model model) {
		
		model.addAttribute("apparels", apparelService.getAllApparels());
		return "shop";
	}
		
	
	//sets the session attributes of a user
//	@GetMapping("/user/apparels/shopsession")
//	public String listAllApparelsLiked(Model model,HttpSession session) {
//		
//		//create a session attribute whenever user logs in 
//		List<Apparel> apparels = (List<Apparel>) session.getAttribute("MY_SESSION_MESSAGES");
//		if (apparels == null) {
//			apparels = new ArrayList<>();
//		}
//		//setting the apparels by the session attribute
//		model.addAttribute("apparels", apparels);
//		return "shop";
//	}
		
		
	//page visible to the user on clicking the newArrivals
	@GetMapping("user/apparels/newArrivals")
	public String listAllApparelsWithNewArrivals(Model model) {
		model.addAttribute("apparels", apparelService.getAllNewArrivals());
		return "shop";
	}

		
	//search functionality by the users 
	@GetMapping("/search")
	public String home(Model model,String keyword) {
		
		model.addAttribute("apparels", apparelService.getAllApparels());
		System.out.print("Inside the home string method in controller");
		System.out.print(keyword);
		if(keyword!=null) {
			
			model.addAttribute("apparels", apparelService.getApparelsByKeyword(keyword));
			System.out.print("\nSuccess in finding keyword");
			
		}else {
			model.addAttribute("apparels", apparelService.getAllApparels());
		}
		return "shop";
	}

	//on like it sets the likes for the session
//	@PostMapping("/shop/like/{id}")
//	public String persistMessage(@PathVariable long id,HttpServletRequest request) {
//		
//		System.out.print("called the persistMessage method , id is:"+id);
//		List<Apparel> apparels = (List<Apparel>) request.getSession().getAttribute("MY_SESSION_MESSAGES");
//		if (apparels == null) {
//			apparels = new ArrayList<>();
//			request.getSession().setAttribute("MY_SESSION_MESSAGES", apparels);
//		}
//		apparels.add(apparelService.getApparelById(id));
//		request.getSession().setAttribute("MY_SESSION_MESSAGES", apparels);
//		System.out.print("Hello");
//		return "redirect:/user/apparels/shop";	
//		
//	}
//	
//	@PostMapping("/destroy")
//	public String destroySession(HttpServletRequest request) {
//		request.getSession().invalidate();
//		return "redirect:/";
//	}
		
}
		
	
	
	

		
		

	
	
