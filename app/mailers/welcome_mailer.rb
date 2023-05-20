class WelcomeMailer < ApplicationMailer
  def notify(correo)
    @correo = correo
    mail to: correo.email, subject: correo.message
  end
end
