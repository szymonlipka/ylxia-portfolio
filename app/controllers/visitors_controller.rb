class VisitorsController < ApplicationController
  def index
    @works = Work.all
  end

  def about
  end

  def contact
  end
end
