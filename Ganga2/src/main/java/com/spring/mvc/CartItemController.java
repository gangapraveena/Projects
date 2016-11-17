package com.spring.mvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.spring.model.Cart;
import com.spring.model.CartItem;
import com.spring.model.Customer;
import com.spring.model.Product;

import com.spring.services.CartItemService;
import com.spring.services.CartService;
import com.spring.services.CustomerServices;
import com.spring.services.ProductServices;

@Controller
public class CartItemController {

	@Autowired
	private CustomerServices customerServices;

	@Autowired(required=true)
	private ProductServices productServices;

	@Autowired
	private CartItemService cartItemService;
	
	public CartItemService getCartItemService() {
		return cartItemService;
	}

	public void setCartItemService(CartItemService cartItemService) {
		this.cartItemService = cartItemService;
	}
	@Autowired
	private CartService cartService;

	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	public ProductServices getProductServices() {
		return productServices;
	}

	public void setProductServices(ProductServices productServices) {
		this.productServices = productServices;
	}

	public CartItemService getCartItem() {
		return cartItemService;
	}

	public void setCartItem(CartItemService cartItemService) {
		this.cartItemService = cartItemService;
	}

	public CustomerServices getCustomerServices() {
		return customerServices;
	}

	public void setCustomerServices(CustomerServices customerServices) {
		this.customerServices = customerServices;
	}

	@RequestMapping("/cart/add/{isbn}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addCartItem(@PathVariable(value = "isbn") int isbn) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		Customer customer = customerServices.getCustomerByUsername(username);
		System.out.println("Customer is " + customer.getCustomerEmail() );

		Cart cart = customer.getCart();
		List<CartItem> cartItems = cart.getCartItem();
		Product product = productServices.getProductbyIsbn(isbn);

		for (int i = 0; i < cartItems.size(); i++) {
			CartItem cartItem = cartItems.get(i);
			if (product.getIsbn() == cartItem.getProduct().getIsbn()) {

				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setTotalprice(cartItem.getQuantity() * cartItem.getProduct().getPrice());
				cartItemService.addCartItem(cartItem);
				return;
			}
		}
		CartItem cartItem = new CartItem();
		cartItem.setProduct(product);
		cartItem.setQuantity(1);
		cartItem.setTotalprice(product.getPrice() * 1);
		cartItem.setCart(cart);
		cartItemService.addCartItem(cartItem);

	}
	@RequestMapping("/cart/removecartitem/{cartItemId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeCartItem(
		@PathVariable(value="cartItemId") int cartItemId){
		cartItemService.removeCartItem(cartItemId);
	}
	@RequestMapping("/cart/removeAllItems/{cartId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeAllCartItems(@PathVariable(value="cartId") int cartId){
		Cart cart=cartService.getCartByCartId(cartId);
		cartItemService.removeAllCartItems(cart);
			
				}



}
