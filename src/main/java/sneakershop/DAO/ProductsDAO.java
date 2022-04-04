package sneakershop.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import sneakershop.DTO.ProductsDTO;
import sneakershop.DTO.ProductsDtoMapper;
@Repository
public class ProductsDAO extends BaseDAO {
	
	private final boolean NO = false;
	private final boolean YES = true;
	
	
	private StringBuffer SqlString() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id as id_product ");
		sql.append(", p.id_category ");
		sql.append(", p.sizes ");
		sql.append(", p.name ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.title ");
		sql.append(", p.highlight ");
		sql.append(", p.new_product ");
		sql.append(", p.details ");
		sql.append(", c.id as id_color ");
		sql.append(", c.name as name_color ");
		sql.append(", c.code as code_color ");
		sql.append(", c.img ");
		sql.append(", p.created_at ");
		sql.append(", p.updated_at ");
		sql.append("FROM ");
		sql.append("products AS p ");
		sql.append("INNER JOIN ");
		sql.append("colors AS c ");
		sql.append("ON p.id = c.id_product ");
		return sql;
	}
	
	private String SqlProducts(boolean newProduct, boolean highLight) {
		StringBuffer  sql = SqlString();
		
		if(highLight ) {
			sql.append("WHERE p.highlight = true ");
		}
		if(newProduct ) {
			sql.append("AND p.new_product = true ");
		}
		sql.append("GROUP BY p.id, c.id_product ");
		sql.append("ORDER BY RAND() ");
		
		if(highLight ) {
			sql.append("LIMIT 12 ");
		}
		if(newProduct ) {
			sql.append("LIMIT 9 ");
		}
		return sql.toString();
	}
	
	private StringBuffer SqlProductsByID(int id) {
		StringBuffer  sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND id_category = "+ id + " ");
		return sql;
	}
	
	private String SqlProductsPaginate(int id, int start, int totalPage) {
		StringBuffer  sql = SqlProductsByID(id);
		sql.append("LIMIT " + start + ", "+ totalPage);
		return sql.toString();
	}
	
	public List<ProductsDTO> GetDataProducts() {
		String sql = SqlProducts(NO, YES);
		List<ProductsDTO> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	public List<ProductsDTO> GetAllProductsByID(int id) {
		String sql = SqlProductsByID(id).toString();
		List<ProductsDTO> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	public List<ProductsDTO> GetDataProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sqlGetDataByID = SqlProductsByID(id);
		List<ProductsDTO> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductsDtoMapper());
		List<ProductsDTO> listProducts = new ArrayList<ProductsDTO>();
		if(listProductsByID.size() > 0) {
			String sql = SqlProductsPaginate(id, start, totalPage);
			listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		}
		return listProducts;
	}

	private String SqlProductByID(long id) {
		StringBuffer  sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND p.id = "+ id + " ");
		sql.append("LIMIT 1 ");
		return sql.toString();
	}
	
	public List<ProductsDTO> GetProductByID(long id) {
		String sql = SqlProductByID(id);
		List<ProductsDTO> listProduct = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProduct;
	}
	
	public ProductsDTO FindProductByID(long id) {
		String sql = SqlProductByID(id);
		ProductsDTO product = _jdbcTemplate.queryForObject(sql, new ProductsDtoMapper());
		return product;
	}
	
}
