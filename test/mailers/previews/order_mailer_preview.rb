# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview
  def new_order_email
    # Set up a temporary order for the preview
    order = Order.new(full_name: "Joe Smith", zip: 12, address: "1-2-3 Chuo, Tokyo, 333-0000", phone: "090-7777-8888", order: "I want to place an order!")

    OrderMailer.with(order: order).new_order_email
  end
end
