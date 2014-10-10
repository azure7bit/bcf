class HomeController < ApplicationController
  def index;end

  def portofolio;end

  def about;end

  def contact
    redirect_to new_visitor_path
  end

  def faq;end
end