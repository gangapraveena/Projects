package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao{

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Transactional
	public List<Product> getAllProduct() {
		Session session = sessionFactory.openSession();
		List<Product> product = session.createQuery("from Product").list();
		session.close();
		return product;
	}
	@Transactional
	public Product getProductbyIsbn(int isbn) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, isbn);
		session.close();
		return product;
	}
	@Transactional
	public void deleteProduct(int isbn) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, isbn);
		session.delete(product);
		session.flush();
		session.close();
		
	}
	@Transactional
	public void addProduct(Product product) {
		Session session = sessionFactory.openSession();
		session.save(product);
		session.flush();
		session.close();
		
	}
	@Transactional
	public void editProduct(Product product) {
		Session session = sessionFactory.openSession();
		// update bookapp set ....where isbn=?
		session.saveOrUpdate(product);
		session.flush();
		session.close();
		
	}

}
