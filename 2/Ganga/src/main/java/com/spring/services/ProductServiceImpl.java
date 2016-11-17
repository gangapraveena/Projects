package com.spring.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.ProductDao;
import com.spring.model.Product;

@Service
public class ProductServiceImpl implements ProductServices {

	@Autowired(required=true)
	private ProductDao productDao;

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public List<Product> getAllProduct() {
		// Auto-generated method stub return bookDao.getAllBooks();
		return productDao.getAllProduct();
	}

	public Product getProductbyIsbn(int isbn) {
		// Auto-generated method stub return bookDao.getBookbyIsbn(isbn);
		return productDao.getProductbyIsbn(isbn);
	}

	public void deleteProduct(int isbn) {

		productDao.deleteProduct(isbn);
	}

	public void addProduct(Product product) {

		productDao.addProduct(product);
	}

	public void editProduct(Product product) {
		// Auto-generated method stub bookDao.editBook(book);
		productDao.editProduct(product);
	}

}
