class StaticPagesController < ApplicationController
  def welcome
    puts "Ceci est mon super params : #{params}"
  end
  
  def team

  end

  def contact
  end
end
