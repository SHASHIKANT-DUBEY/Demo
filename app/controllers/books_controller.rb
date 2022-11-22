class BooksController < ApplicationController

   before_action :shashi,    only: :create

	def index
		@books = Book.all
		render json: @books
  end

  def show 
     	@book = Book.find(params[:id])
      render json:@book
    end
     def update
     	@book = Book.find(params[:id])
     	if save.update(book_params)
     		render json: @book
     	else

     	 render json: "this is arrers"
     end
    end
 def delete
 	   @book = Book.find(params[:id])
    	@book.delete
 	   render  json: "delete all books record" 
     end
  def create
    byndig.pry
      @book = Book.new(book_params)

      if @book.save
      render json: @book
     else
      render json: "new", status: :unprocessable_entity
     end
    end

  private
    def book_params
      params.require(:book).permit(:name)
    end

end

