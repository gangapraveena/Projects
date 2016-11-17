var myapp=angular.module("myapp",[])
.controller("productController", function($scope,$http){
	$scope.getProductList=function(){
		
		$http.get('http://localhost:8014/Ganga/getProductList').success(function(data){
			
			$scope.product=data;
		})
	}
	$scope.addToCart=function(isbn){
		$http.put('http://localhost:8014/Ganga/cart/add/'+isbn).success(function(){
			alert('Added succesfully');
		})
	}
	$scope.refreshCart=function(){
		$http.get('http://localhost:8014/Ganga/cart/getCart/'+$scope.cartId).success(function(data){
			$scope.cart=data;
		})
	    } 
	    $scope.getCart=function(cartId){
		$scope.cartId=cartId;
		$scope.refreshCart(cartId);
	    }

	    $scope.removeFromCart=function(cartItemId){
			$http.put(
	'http://localhost:8014/Ganga/cart/removecartitem/'+cartItemId)
		.success(function(){
			$scope.refreshCart();
		})
	    }

	    $scope.clearCart=function(){
			$http.put(
	'http://localhost:8014/Ganga/cart/removeAllItems/'+$scope.cartId)
		.success(function(){
			$scope.refreshCart();
		});
	    }

	    $scope.calculateGrandTotal=function(){
		var grandTotal=0.0
		for(var i=0;i<$scope.cart.cartItem.length;i++)
			grandTotal=grandTotal+$scope.cart.cartItem[i].totalprice;
		return grandTotal;
	}

});