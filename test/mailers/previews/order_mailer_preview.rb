# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview
  def new_order_email
    # Set up a temporary order for the preview
    order = Order.last

    OrderMailer.with(order: order).new_order_email
  end

  def new_order_to_user_email
    # Set up a temporary order for the preview
    order = Order.last

    OrderMailer.with(order: order).new_order_to_user_email
  end
end
