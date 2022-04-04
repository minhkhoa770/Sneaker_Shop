package sneakershop.UserController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import sneakershop.Service.User.HomeServiceImpl;
@Controller
public class BaseController {
	@Autowired
	HomeServiceImpl _homeService;
	public ModelAndView _mvShare = new ModelAndView();
	
	
	public ModelAndView Init() {
		_mvShare.addObject("menu",_homeService.GetDataMenu());
		return _mvShare;
	}
}
