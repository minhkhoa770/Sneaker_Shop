package sneakershop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sneakershop.DAO.ProductsDAO;
import sneakershop.DTO.ProductsDTO;
@Service

public class ProductServiceImpl implements IProductService {
	
	@Autowired
	ProductsDAO productsDAO = new ProductsDAO();

	public ProductsDTO GetProductByID(long id) {
		List<ProductsDTO> listProducts = productsDAO.GetProductByID(id);
		return listProducts.get(0);
	}

	public List<ProductsDTO> GetProductByIDCategory(int id) {
		
		return productsDAO.GetAllProductsByID(id);
	}

}
