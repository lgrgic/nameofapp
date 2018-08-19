class UserMailer < ApplicationMailer
  default from: "noreply@planetglobula.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'lukagrgic14@gmail.com',
         subject: "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Planet Globula"
    mail( from: "welcome@planetglobula.com",
          to: user.email,
          subject: "Welcome to #{@appname}!")
  end

  def order_created(order)
    @appname = "Planet Globula"
    @order = order
    @user = order.user
    mail(
    from: "order-confirm@planetglobula.com",
    to: @user.email,
    subject: "Your order at #{@appname}")
  end
end
