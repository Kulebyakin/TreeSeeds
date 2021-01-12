function add_to_cart(id)
{
	var key = 'product_' + id;
	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);

	update_orders_input();
	update_orders_button();
}

// function add_to_cart(id)
// {
	// var cart = {
	// 	id: {
	// 			count: 0
	// 		}
	// 	}
	// };
	// localStorage.setItem("item", JSON.stringify(cart));
	// var item = JSON.parse(localStorage.getItem("citem"));

	// console.log(item);

	// item = item * 1 + 1;
	// window.localStorage.setItem("item", JSON.stringify(cart));

	// update_orders_input();
	// update_orders_button();
// }

function update_orders_input()
{
	var orders = cart_orders();
	$('#orders_input').val(orders);
}

function update_orders_button() 
{
	if (cart_number_of_items() > 0) 
	{
		var text_button = 'Корзина (' + cart_number_of_items() + ')';
	} else 
	{
		var text_button = 'Корзина';
	}
	$('#orders_button').val(text_button);
}

function cart_number_of_items()
{
	var sum = 0;
	for (var i = 0; i < localStorage.length; i++)
	{
    	sum = sum * 1 + localStorage.getItem(localStorage.key(i)) * 1;
	}
	return sum;
}

function cart_orders()
{
	var orders = '';
	for (var i = 0; i < localStorage.length; i++)
	{
		order = localStorage.key(i) + '=' + localStorage.getItem(localStorage.key(i)) + ',';
    	orders = orders + order;
	}
	return orders;
}

function cancel_order()
{
	window.localStorage.clear();
	update_orders_input();
	update_orders_button();

	document.location.href = '/'

	// $('#cart').text('Your cart is empry! Please add items in your cart.');
	return false;
}