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
			if (item.id == id && item.price == price) 
			{
				json.splice(i, 1);
				window.localStorage.setItem("item", JSON.stringify(json));
				json = JSON.parse(localStorage.getItem("item"));
				
				var ur = $('#cart').data('url');

				var order_table = '';
				json.forEach(function(item1, i1, array1) {

					ur.forEach(function(item2, i2, array2) {
						if (item2.id.id == item1.id && item2.price == item1.price) {
							
							order_table += '<tr><td>' + (i1 * 1 + 1) + '</td><td>' + item2.id.title + '</td><td>' + 
								item1.price + '</td><td>' + item1.count + '</td><td>' + 
								item1.count * 1 * item1.price * 1 + '</td><td width="50"><a href="javascript:delete_item(' + 
								item1.id + ', ' + item1.price + ')"><img width="25" class="m-0" src="/bin.svg" /></a></td></tr>';
						};
					});
				});
				
				order_table += '<tr><td></td><td><strong>Всего</strong></td><td></td><td><strong>' + 
				cart_number_of_items() + '</strong></td><td><strong>' + sum_of_all_items() + '</strong></td></tr>';

				$('#cart').html(order_table);

				if (cart_number_of_items() < 1)
				{
					cancel_order();
				}
			}
		});
	};
	
	cart_number_of_items()
	sum_of_all_items();
	update_orders_input();
	update_orders_button();
}

function sum_of_all_items()
{
	var json = JSON.parse(localStorage.getItem("item"));
	var qty = 0;
	if (json != null) 
	{
		json.forEach(function(item, i, array) 
		{
			qty = qty * 1 + item["price"] * 1 * item["count"] * 1;	
		});
	};
	return qty;
}