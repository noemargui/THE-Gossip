class StaticPagesController < ApplicationController
  def welcome
    @gossips = Gossip.all
  end
  
  def team

  end

  def contact
  end

  def gossipdetails
    @gossip = Gossip.find(params[:id])
    @user = Gossip.find(params[:id]).user
  end

  def authordetails
    @user = Gossip.find(params[:id]).user
  end
end
