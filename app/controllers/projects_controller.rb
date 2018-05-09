class ProjectsController < ApplicationController
  def index
    @projects=Project.all

  end

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
      gon.zoom_center=-1
    end
  end

  def visual_recommender_book_search
    respond_to do |format|
      format.json { @books = Book.search(params[:term]) }
    end
  end

end
