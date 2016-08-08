class StaticsController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def browse
    @books = Book.all
  end
end
