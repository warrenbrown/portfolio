class HomeController < ApplicationController
  def index
    @articles = Article.limit(3).order("created_at").all
  end

  def about

  end

  def contact

  end
end
