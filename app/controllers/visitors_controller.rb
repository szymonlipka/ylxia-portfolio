class VisitorsController < ApplicationController
  def index
    @works = Work.where(top_work: true)
  end

  def about
  end

  def contact
  end
end
