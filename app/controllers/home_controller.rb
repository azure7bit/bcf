class HomeController < ApplicationController
  def index;end
  def portofolio;end
  def about;end
  def contact
    @user = User.new
  end
end