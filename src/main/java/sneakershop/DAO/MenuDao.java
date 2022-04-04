package sneakershop.DAO;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;

import sneakershop.Entity.MapperMenu;
import sneakershop.Entity.Menu;
@Repository
public class MenuDao extends BaseDAO{
	public List<Menu> GetDataMenu(){
		List<Menu> list = new ArrayList<Menu>();
		String sql = "SELECT * FROM MENU";
		list= _jdbcTemplate.query(sql, new MapperMenu());
		return list;
		
	}
}
