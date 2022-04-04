package sneakershop.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import sneakershop.Entity.Categorys;
import sneakershop.Entity.MapperCategorys;
@Repository
public class CategorysDao extends BaseDAO {

	public List<Categorys> GetDataCategorys(){
		List<Categorys> list = new ArrayList<Categorys>();
		String sql ="SELECT * FROM categories";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list;
}
}