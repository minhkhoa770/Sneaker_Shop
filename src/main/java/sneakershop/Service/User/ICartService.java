package sneakershop.Service.User;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import sneakershop.DTO.CartDTO;
import sneakershop.DTO.ProductsDTO;

@Service
public interface ICartService {
	
	public HashMap<Long, CartDTO> AddCart(long id, HashMap<Long, CartDTO> cart );
	public HashMap<Long, CartDTO> EditCart(long id, int quanty,  HashMap<Long, CartDTO> cart );
	public HashMap<Long, CartDTO> DeleteCart(long id,  HashMap<Long, CartDTO> cart );
	public int TotalQuanty(  HashMap<Long, CartDTO> cart );
	public double TotalPrice(  HashMap<Long, CartDTO> cart );

}
