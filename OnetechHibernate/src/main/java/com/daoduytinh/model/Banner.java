package com.daoduytinh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "BANNER")
public class Banner {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	protected int id;
	@Column(name = "title")
	protected String title;
	@Column(name = "image")
	protected String image;
	@Column(name = "type")
	protected int type;
	@Column(name = "id_product")
	protected int id_product;
	public Banner() {  }
    public Banner(int id, String title, String image, int type, int id_product) {
        this.id = id;
    	this.title = title;
    	this.image= image;
        this.type = type;
        this.id_product = id_product;
    } 
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getImage() {
        return image;
    }
    public void setImage(String image) {
        this.image=image;
    }
    @Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + id_product;
		result = prime * result + ((image == null) ? 0 : image.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + type;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Banner other = (Banner) obj;
		if (id != other.id)
			return false;
		if (id_product != other.id_product)
			return false;
		if (image == null) {
			if (other.image != null)
				return false;
		} else if (!image.equals(other.image))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (type != other.type)
			return false;
		return true;
	}
	public int getType() {
        return type;
    }
    public void setType(int type) {
        this.type = type;
    }
    public int getIdProduct() {
        return id_product;
    }
    public void setIdProduct(int id_product) {
        this.id_product = id_product;
    }
}

