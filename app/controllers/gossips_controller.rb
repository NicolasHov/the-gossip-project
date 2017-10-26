class GossipsController < ApplicationController

  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def update
      @gossip = Gossip.find(params[:id])
      if @gossip.update(gossip_params)
        redirect_to @gossip
      else
        render "edit"
      end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def create
      #render plain: params[:gossip].inspect  #on a un hash avec plain comme key et params[].inspect comme value
      @gossip = Gossip.new(gossip_params)
      if @gossip.save
        redirect_to @gossip
      else
        render 'new'
      end
  end

    def destroy
      @gossip = Gossip.find(params[:id])
      @gossip.destroy
      redirect_to gossips_path
    end

  private
    def gossip_params
      params.permit(:anonymous_author, :comment)
    end


end
