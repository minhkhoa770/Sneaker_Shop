package sneakershop.UserController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import sneakershop.Entity.Users;
import sneakershop.Service.User.AccountServiceImpl;

@Controller
public class UserController extends BaseController{
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	
	@RequestMapping(value = "/register", method = RequestMethod.GET )
	public ModelAndView Register() {
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST )
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
		int count = accountService.AddAccount(user);
		if(count > 0) {
			_mvShare.addObject("status", "Successfully Register");
		}
		else {
			_mvShare.addObject("status", "Create account fail");
		}
		_mvShare.setViewName("user/account/register");
		return _mvShare;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST )
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") Users user) {
		user = accountService.CheckAccount(user);
		if(user != null) {
			_mvShare.setViewName("redirect:home");
			session.setAttribute("LoginInfo", user);
		}
		else {
			_mvShare.addObject("statusLogin", "Login Fail");
		}
		return _mvShare;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET )
	public String Login(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfo");
		return "redirect:"+request.getHeader("Referer");
	}
	
}