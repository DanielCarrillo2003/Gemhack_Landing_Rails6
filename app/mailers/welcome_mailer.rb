class WelcomeMailer < ApplicationMailer
  def notify(correo)
    @correo = correo
    mail to: "javierjorge77@hotmail.com, admin@gemhack.io, saratiel69@gmail,com", subject: correo.message
  end
end
