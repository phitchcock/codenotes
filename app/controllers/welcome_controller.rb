class WelcomeController < ApplicationController

  def index
    render layout: 'theme'
  end

  def dashboard
    @notes = Note.all
    @gem_comments = GemComment.all
    @projects = Project.all
 
    render layout: "theme"
  end

  def sign_up
    render layout: "theme"
  end
  
end