package sneakershop.Service.User;
import java.util.HashMap;
import sneakershop.DTO.CartDTO;
import org.springframework.stereotype.Service;

import sneakershop.Entity.Bills;
@Service

public interface IBillsService {
	public int AddBills (Bills bill);
	public void AddBillsDetail (HashMap<Long, CartDTO> carts);
}
