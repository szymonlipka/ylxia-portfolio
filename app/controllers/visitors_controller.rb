class VisitorsController < ApplicationController
  def index
    @works = Work.top_works
  end

  def about
  end

  def contact
  end
end
