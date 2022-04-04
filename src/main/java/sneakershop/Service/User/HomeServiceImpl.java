package sneakershop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sneakershop.DAO.CategorysDao;
import sneakershop.DAO.MenuDao;
import sneakershop.DAO.ProductsDAO;
import sneakershop.DAO.SlidesDAO;
import sneakershop.DTO.ProductsDTO;
import sneakershop.Entity.Categorys;
import sneakershop.Entity.Menu;
import sneakershop.Entity.Slides;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private SlidesDAO slidesDAO;
	@Autowired
	private CategorysDao categoryDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private ProductsDAO productsDAO;
	
	public List<Slides> GetDataSlide() {
		return slidesDAO.GetDataSlide();
	}

	public List<Categorys> GetDataCategorys() {
		return categoryDao.GetDataCategorys();
	}

	public List<Menu> GetDataMenu() {	
		return menuDao.GetDataMenu();
	}

	public List<ProductsDTO> GetDataProducts() {
		List<ProductsDTO> listProducts = productsDAO.GetDataProducts();
		listProducts.get(0).getId_color();
		return listProducts;
	}

}
