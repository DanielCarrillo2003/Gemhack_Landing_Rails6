class WelcomeMailer < ApplicationMailer
  def notify(correo)
    @correo = correo
    mail to: "saratiel69@gmail.com", subject: correo.message
  end
end
