class PagesController < ApplicationController 
    def index
        @correo = Correo.new
    end
    
end