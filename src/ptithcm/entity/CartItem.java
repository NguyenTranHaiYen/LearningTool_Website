package ptithcm.entity;

import javax.persistence.*;

@Entity @Table(name="CartItems")
public class CartItem {
	
	@Id @GeneratedValue
	@Column(name="Id")
	private Integer cartItemId;
	
	private Integer quantity;
	
	private Float unitPrice;
	
	@ManyToOne
	@JoinColumn(name="proId")
	private Product proid;

	@ManyToOne
	@JoinColumn(name="cartId")
	private Cart cartid;

	public Integer getCartItemId() {
		return cartItemId;
	}

	public void setCartItemId(Integer cartItemId) {
		this.cartItemId = cartItemId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Float getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Float unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Product getProid() {
		return proid;
	}

	public void setProid(Product proid) {
		this.proid = proid;
	}

	public Cart getCartid() {
		return cartid;
	}

	public void setCartid(Cart cartid) {
		this.cartid = cartid;
	}
	
	
}
