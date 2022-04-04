package sneakershop.DAO;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import sneakershop.Entity.MapperSlides;
import sneakershop.Entity.Slides;

@Repository

public class SlidesDAO extends BaseDAO {
	
	
	public List<Slides> GetDataSlide() {
		List<Slides> list = new ArrayList<Slides>();
		String sql ="SELECT * FROM SLIDES";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
		
	}
}
