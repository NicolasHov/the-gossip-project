class SessionsController < ApplicationController
  def new
  end

  def create
    moussaillon = Moussaillon.find_by(mail: params[:session][:mail].downcase)
    if moussaillon && moussaillon.authenticate[params[:session][:password]]
      log_in moussaillon
      redirect_to moussaillon 
    else
      #flash error
      flash.now[:danger] = "Invalid credentials"
      render 'new'
    end
  end
end
