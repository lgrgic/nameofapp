class UserMailer < ApplicationMailer

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'lukagrgic14@gmail.com',
         subject: "A new contact form message from #{name}")
  end

  def feedback_form(message)
  @message = message
    mail(to: 'lukagrgic14@gmail.com',
         subject: "You have received a new feedback")
  end

  def welcome(user)
    @appname = "Planet Globula"
    mail(to: user.email,
        subject: "Welcome to #{@appname}!")
  end

  def order_created(order)
    @appname = "Planet Globula"
    @order = order
    @user = order.user
    mail(to: @user.email,
    subject: "Your order at #{@appname}")
  end
end
