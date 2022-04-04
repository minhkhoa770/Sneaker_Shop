package sneakershop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import sneakershop.DTO.ProductsDTO;
@Service
public interface ICategoryService {
	
	public List<ProductsDTO> GetAllProductsByID(int id);
	
	
}
