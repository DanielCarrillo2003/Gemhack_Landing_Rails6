# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome_mailer/notify
  def notify
    WelcomeMailer.notify Correo.new(name: "Daniel", email: "example@gmail.com", message: "Hola")
  end

end
