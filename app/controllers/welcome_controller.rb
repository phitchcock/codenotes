class WelcomeController < ApplicationController

  before_action :authenticate_user!, except: [:sign_up]

  def dashboard
    @notes = Note.all
    @gem_comments = GemComment.all
    @projects = Project.all
    @users = User.all

    @total = Note.count + GemComment.count + Project.count
  end
  
end