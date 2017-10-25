class GossipsController < ApplicationController

  def index
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
  end

  def create
      #render plain: params[:gossip].inspect  #on a un hash avec plain comme key et params[].inspect comme value
      @gossip = Gossip.new(gossip_params)

     @gossip.save
     redirect_to @gossip
  end

  private
    def gossip_params
      params.require(:gossip).permit(:anonymous_author, :comment)
    end

end