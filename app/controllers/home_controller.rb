class HomeController < ApplicationController
  def index;end

  def portofolio;end

  def about;end

  def contact
    redirect_to new_visitor_path
  end

  def faq;end

  def iobc;end

  def workshops;end

  def exhibitions;end

  def auctions;end
end