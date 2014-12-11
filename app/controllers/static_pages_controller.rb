class StaticPagesController < ApplicationController

  def index
  end

  def backsies
    @categories = Category.all
  end

end
