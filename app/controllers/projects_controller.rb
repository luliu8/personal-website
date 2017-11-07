class ProjectsController < ApplicationController
  def index
    @projects=Project.all

  end



  def visual_recommender
    if params[:'books-search-txt']
      @book=Book.find(params[:'books-search-txt']).first
      @neighbors=Book.find_neighbors(@book.title) if @book
    end
  end

  def visual_recommender_book_search
    respond_to do |format|
      format.html
      format.json { @books = Book.search(params[:term]) }
    end
  end

end
