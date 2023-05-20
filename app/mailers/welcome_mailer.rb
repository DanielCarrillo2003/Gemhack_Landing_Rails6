class WelcomeMailer < ApplicationMailer
  def notify(correo)
    @correo = correo
    mail to: "daniel_carrillo_2003@gmail.com", subject: correo.message
  end
end
