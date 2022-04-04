package sneakershop.DTO;

public class CartDTO {
	private int quanty;
	private double totalPrice;
	private ProductsDTO product;
	
	
	
	
	
	public CartDTO(int quanty, double totalPrice, ProductsDTO product) {
		this.quanty = quanty;
		this.totalPrice = totalPrice;
		this.product = product;
	}
//---
	public CartDTO() {
		
	}
//---
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public ProductsDTO getProduct() {
		return product;
	}
	public void setProduct(ProductsDTO product) {
		this.product = product;
	}
}
