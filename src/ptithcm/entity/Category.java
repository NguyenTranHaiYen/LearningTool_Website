package ptithcm.entity;
import java.util.Collection;

import javax.persistence.*;

@Entity
@Table(name="Categories")
public class Category {
	@Id @GeneratedValue
	private Integer cateId;
	
	private String cateName;
	
	private String cateImage;
	
	@OneToMany(mappedBy = "category",fetch = FetchType.EAGER)
	private Collection<Product> product;

	public Integer getCateId() {
		return cateId;
	}

	public void setCateId(Integer cateId) {
		this.cateId = cateId;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public String getCateImage() {
		return cateImage;
	}

	public void setCateImage(String cateImage) {
		this.cateImage = cateImage;
	}

	public Collection<Product> getProduct() {
		return product;
	}

	public void setProduct(Collection<Product> product) {
		this.product = product;
	}

	
	
}
