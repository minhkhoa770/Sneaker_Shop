package sneakershop.UserController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import sneakershop.Service.User.CategoryServiceImpl;

@Controller 
public class HomeController extends BaseController{

	
	@RequestMapping(value = { "/", "/home" })
	public ModelAndView Index() {
		Init();
		_mvShare.addObject("slides",_homeService.GetDataSlide());
		_mvShare.addObject("categorys",_homeService.GetDataCategorys());
		_mvShare.addObject("products",_homeService.GetDataProducts());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
	

}
