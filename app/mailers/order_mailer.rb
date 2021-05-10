class OrderMailer < ApplicationMailer
  def new_order_email
    @order = params[:order]

    mail(to: ENV['admin_mail'], subject: "Новый заказ!")
  end
end
