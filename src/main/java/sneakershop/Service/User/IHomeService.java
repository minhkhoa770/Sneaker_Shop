package sneakershop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sneakershop.DTO.ProductsDTO;
import sneakershop.Entity.Categorys;
import sneakershop.Entity.Menu;
import sneakershop.Entity.Slides;
@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Categorys> GetDataCategorys();
	public List<Menu> GetDataMenu();
	public List<ProductsDTO> GetDataProducts();
}
