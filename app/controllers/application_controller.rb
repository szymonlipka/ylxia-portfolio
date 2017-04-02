class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_galleries


  def set_galleries
    @galleries = Gallery.all
  end
end
