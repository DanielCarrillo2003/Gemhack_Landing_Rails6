class CorreosController < ApplicationController 
    def create 
        @correo = Correo.new(correo_params)
        if @correo.save
            WelcomeMailer.notify(@correo).deliver_now
        
            respond_to do |format|
              format.html do
                redirect_to root_path
                flash[:success] = 'Correo enviado exitosamente'
              end
              format.json { head :no_content }
            end
        end
    end

    private 

    def correo_params
        params.require(:correo).permit(:name, :email, :message)
    end
end