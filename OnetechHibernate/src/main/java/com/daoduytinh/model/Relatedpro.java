package com.daoduytinh.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RELATEDPRO")
public class Relatedpro {

			@Id
			@Column(name = "id")
			@GeneratedValue(strategy = GenerationType.IDENTITY)
		    protected int id;
			@Column(name = "id_product")
		    protected int idproduct;
			@Column(name = "id_product_re")
		    protected int idproductre;
			public Relatedpro() {
			}
			public Relatedpro(int id, int idproduct, int idproductre) {
				this.id = id;
				this.idproduct = idproduct;
				this.idproductre = idproductre;
			}
			public int getId() {
				return id;
			}
			public void setId(int id) {
				this.id = id;
			}
			public int getIdproduct() {
				return idproduct;
			}
			public void setIdproduct(int idproduct) {
				this.idproduct = idproduct;
			}
			public int getIdproductre() {
				return idproductre;
			}
			public void setIdproductre(int idproductre) {
				this.idproductre = idproductre;
			}
			

}
