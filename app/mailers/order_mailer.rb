class OrderMailer < ApplicationMailer
  default from: 'Hoang Tu <hoangtukg295@gmail.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  #Mail template
  def received(order)
    @order = order
    mail to: order.email, subject: 'We are received your order'
  end

  #Generating email
  def shipped(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order Shipped'
  end


  # def received
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  # def shipped
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end
end
