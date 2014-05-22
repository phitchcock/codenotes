class WelcomeController < ApplicationController

  def index
  end

  def about
    render layout: "empty"
  end
  
end