function add_to_cart(id, price)
{
	var json = JSON.parse(localStorage.getItem("item"));

	if (json != null) 
	{
		var present = false
		json.forEach(function(item, i, array) {
			if (item["id"] == id) 
			{
				if (item["price"] == price)
				{
					item["count"] = item["count"] * 1 + 1;
					present = true
				}
			}
		});

		if (present == false) {
			json.push({"id": id, "price": price, "count":1});
		};
	} else 
	{
		var json = [{
				"id": id,
				"price": price,
				"count": 1
		}]; 
	};
	window.localStorage.setItem("item", JSON.stringify(json));

	update_orders_input();
	update_orders_button();
}

function update_orders_input()
{
	var orders = localStorage.getItem("item");
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
	var json = JSON.parse(localStorage.getItem("item"));

	if (json != null) 
	{
		json.forEach(function(item, i, array) {
			sum = sum * 1 + item["count"] * 1;
		});
	};

	return sum;
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

function delete_item(id, price)
{
	var json = JSON.parse(localStorage.getItem("item"));

	if (json != null) 
	{
		json.forEach(function(item, i, array) {
			if (item["id"] == id) 
			{
				if (item["price"] == price)
				{
					json.splice(i, 1);
				}
			}
		});
	};
	window.localStorage.setItem("item", JSON.stringify(json));

	update_orders_input();
	update_orders_button();
}