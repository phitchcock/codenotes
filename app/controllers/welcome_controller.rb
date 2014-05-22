class WelcomeController < ApplicationController

  before_action :authenticate_user!, except: [:sign_up]

  def dashboard
    @notes = Note.all
    @gem_comments = GemComment.all
    @projects = Project.all

    @total = Note.count + GemComment.count + Project.count
 
    render layout: "theme"
  end

  def sign_up
    render layout: "theme"
  end
  
end