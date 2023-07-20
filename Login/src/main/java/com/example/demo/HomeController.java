package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController
{
	@Autowired
	StudentService sp;
	
	@RequestMapping("/")
	public String one()
	{
		return "SignUp";
	}
	
	@PostMapping("/next")
	public String two(@ModelAttribute("s1") Student s1)
	{
		sp.getdata(s1);
		return "redirect:/login";
	}
	
	@RequestMapping("/welcome")
	public String welcome(Model m)
	{
		List<Student> ss=sp.getinfo();
		m.addAttribute("ss",ss);
		return "welcome";
	}
	
	@RequestMapping("/del")
	public String three(@RequestParam("id") int id)
	{	sp.deletedata(id);
		return "redirect:/welcome";
	}
	
	@RequestMapping("/edit")
	public String four(@RequestParam("id") int id,ModelMap m)
	{
		Student s1 = sp.getsingledata(id);
		m.addAttribute("s1",s1);
		return"edit";
	}
	
	@PostMapping("/update")
	public String five(@ModelAttribute("s1") Student s1)
	{
		sp.updatedata(s1);
		return "redirect:/welcome";
	}
	
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	
	@PostMapping("/ko")
	public String ko( @RequestParam("email") String email, @RequestParam("password") String password)
	{
		try
		{
			Student s = sp.getlogin(email, password);
			 if(s!=null)
			 {
				 return "redirect:/welcome";
			 }
		}
		 
		catch(Exception e)
		{
			//TODO: handle exception
		}
		return "login";
		
	
	}
	
}
