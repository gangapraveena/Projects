package com.spring.mvc;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.spring.model.Category;
import com.spring.model.Product;
import com.spring.services.ProductServices;

@Controller
public class ProductController {
	
	@Autowired
	private ProductServices productServices;

	public ProductServices getProductServices() {
		return productServices;
	}

	public void setProductServices(ProductServices productServices) {
		this.productServices = productServices;
	}
	
	@RequestMapping("/getProductList")
	public @ResponseBody List<Product> getProductListInJson(){
		System.out.println("entered in getproductlist");
		return productServices.getAllProduct();
	}
	
 @RequestMapping("/productListAngular")
	public String getProduct(){
		return "productList";
	}

	@RequestMapping("/getAllProduct")
	public ModelAndView getAllProduct() {
		List<Product> product = productServices.getAllProduct();
		return new ModelAndView("productList", "product", product);
	}

	@RequestMapping("getProductByIsbn/{isbn}")
	public ModelAndView getProductbyIsbn(@PathVariable(value = "isbn") int isbn) {
		Product product = productServices.getProductbyIsbn(isbn);
		return new ModelAndView("productpage", "product", product);
	}

	@RequestMapping("admin/delete/{isbn}")
	public String deleteProduct(@PathVariable(value = "isbn") int isbn) {
		Path path=Paths.get("C:/Users/goutham1/workspace/Ganga/src/main/webapp/WEB-INF/resources/images/" + isbn + ".png");
		if(Files.exists(path))
				{
			try {
						Files.delete(path);
					} catch (IOException e) {
						
						e.printStackTrace();
					}
				}

		productServices.deleteProduct(isbn);
		return "redirect:/getAllProduct";
	}

	@RequestMapping(value = "admin/product/addProduct", method = RequestMethod.GET)
	public String getProductForm(Model model) {
		Product product = new Product();
		Category category = new Category();
		category.setCid(1);// maths
		// set the category as 1 for the Book book
		product.setCategory(category);
		model.addAttribute("productFormObj", product);
		return "productForm";

	}

	@RequestMapping(value = "admin/product/addProduct", method = RequestMethod.POST)
	public String addProduct(@Valid@ModelAttribute(value = "productFormObj") Product product, BindingResult result) {
		if (result.hasErrors())
			return "productForm";

		productServices.addProduct(product);
		MultipartFile image=product.getProductImage();
		if(image!=null && !image.isEmpty()){
			Path path=Paths.get("C:/Users/goutham1/workspace/Ganga/src/main/webapp/WEB-INF/resources/images/" + product.getIsbn() + ".png");
			try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
			}
			return"redirect:/getAllProduct";
		}

		
	@RequestMapping(value = "/admin/product/editProduct/{isbn}")
	public ModelAndView getEditForm(@PathVariable(value = "isbn") int isbn) {

		Product product = this.productServices.getProductbyIsbn(isbn);
		return new ModelAndView("editProductForm", "editProductObj", product);
	}

	@RequestMapping(value = "/admin/product/editProduct", method = RequestMethod.POST)
	public String editProduct(@ModelAttribute(value = "editProductObj") Product product) {
		productServices.editProduct(product);
		return "redirect:/getAllProduct";

	}
	
	

	@RequestMapping("/home")
	public String Home() {
		return "home";

	}
	

}
