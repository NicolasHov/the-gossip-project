class SessionsController < ApplicationController

  def new
  end

  def create
    # on crée un nouveau moussaillon d'après les params rentrés dans le form
    moussaillon = Moussaillon.find_by(mail: params[:session][:mail].downcase)
    # si moussaillon existe déjà on le log => a éclaircir, pourquoi 'mail:' ?
    if moussaillon && moussaillon.authenticate(params[:session][:password]) # syntaxe a éclairicir
      log_in moussaillon #méthode définie dans le sessions_helpers (on l'a 'include' dans applicatins_controllers)
      redirect_to moussaillon
    else
      #flash error, on réaffiche la page de login
      flash.now[:danger] = "Invalid credentials"
      render 'new'
    end
  end
end
