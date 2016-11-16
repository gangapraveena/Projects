package com.spring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;


import com.spring.model.Product;

@Repository
public interface ProductDao {

	List<Product> getAllProduct();
	
	Product getProductbyIsbn(int isbn);

	void deleteProduct(int isbn);

	void addProduct(Product product);
	
	void editProduct(Product product);

	

}
