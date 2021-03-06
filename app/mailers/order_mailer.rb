class OrderMailer < ApplicationMailer
  def new_order_email
    @order = params[:order]

    mail(to: Rails.application.credentials.admin_mail, subject: "Новый заказ!")
  end

  def new_order_to_user_email
    @order = params[:order]

    mail(to: @order.user.email, subject: "Вы оформили новый заказ!")
  end
end
