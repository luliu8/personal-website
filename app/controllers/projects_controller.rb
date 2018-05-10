class ProjectsController < ApplicationController
  def facial_composition
  end

  def visual_recommender
    if params[:'books-search-txt']
      @book = Book.find(params[:'books-search-txt']).first
      if @book
        @neighbors = Book.find_neighbors(@book.vec)
        respond_to do |format|
          format.js { }
        end
      end
    else
      gon.viewer=nil
    end
  end

  def visual_recommender_book_search
    respond_to do |format|
      format.json { @books = Book.search(params[:term]) }
    end
  end

  def company_1c_sales_prediction
  end

  def observing_dark_worlds
  end

  def two_players_sudoku
  end

  def dongdong_android_app
    
  end
end



