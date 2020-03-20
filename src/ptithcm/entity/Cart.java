package ptithcm.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Carts")
public class Cart {
	
	@Id @GeneratedValue
	@Column(name="Id")
	private Integer cartId;
	
	@ManyToOne
	@JoinColumn(name="userId")
	public User userid;
	
	@Temporal(TemporalType.DATE) @DateTimeFormat(pattern="MM/dd/yyyy")
	private Date buyDate;
	
	public Integer isPaid;
	
	@OneToMany(mappedBy = "cartid",fetch = FetchType.EAGER)
	private Collection<CartItem> cartitem;

	public Cart() {
		super();
	}

	public Cart(Integer cartId, User userid, Date buyDate, Integer isPaid, Collection<CartItem> cartitem) {
		super();
		this.cartId = cartId;
		this.userid = userid;
		this.buyDate = buyDate;
		this.isPaid = isPaid;
		this.cartitem = cartitem;
	}

	public Integer getCartId() {
		return cartId;
	}

	public void setCartId(Integer cartId) {
		this.cartId = cartId;
	}

	public User getUserid() {
		return userid;
	}

	public void setUserid(User userid) {
		this.userid = userid;
	}

	public Date getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}

	public Integer getIsPaid() {
		return isPaid;
	}

	public void setIsPaid(Integer isPaid) {
		this.isPaid = isPaid;
	}

	public Collection<CartItem> getCartitem() {
		return cartitem;
	}

	public void setCartitem(Collection<CartItem> cartitem) {
		this.cartitem = cartitem;
	}

	
	
	
	
}
