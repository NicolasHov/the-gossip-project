class MoussaillonsController < ApplicationController

  def index
    @moussaillons = Moussaillon.all
  end

  def show
    @moussaillon = Moussaillon.find(params[:id])
  end

  def new
    @moussaillon = Moussaillon.new
  end

  def update
      @moussaillon = Moussaillon.find(params[:id])
      if @moussaillon.update(moussaillon_params)
        redirect_to @moussaillon
      else
        render "edit"
      end
  end

  def edit
    @moussaillon = Moussaillon.find(params[:id])
  end

  def create
      #render plain: params[:moussaillon].inspect  #on a un hash avec plain comme key et params[].inspect comme value
      @moussaillon = Moussaillon.new(moussaillon_params)
      if @moussaillon.save
        redirect_to @moussaillon
      else
        render 'new'
      end
  end

    def destroy
      @moussaillon = Moussaillon.find(params[:id])
      @moussaillon.destroy
      redirect_to moussaillons_path
    end

  private
    def moussaillon_params
      params.permit(:bio, :username, :mail)
    end

end
