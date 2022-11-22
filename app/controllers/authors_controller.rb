class AuthorsController < ApplicationController
 
 def index
   	@authors = Author.all
    render json: @authors
  end
	def create
    @author = Author.new(author_params)

    if @author.save
      render json: @author
    else
      render json: "status: :unprocessable_entity"
    end
 end

 def update_book_author
    author = Author.find(params[:id])
    book = Category.where("author_id =? and book_id =?", author.id,)
    if book.update(author_params)
      render json: book
    else
      render json; "this is not working"
   end
 end

 def show
  
 	   author = Author.last
     render json: {author: [author , book: author.books]}
  end
  def destroy
    byebug
      	author = Author.first
        authorse= Category.where("author_id =? and book_id =?", author.id, params[:book_id] )
        authorse.delete
      	render json: "this is delete"
  end

 def 
   private
    def author_params
      params.require(:author).permit(:name ,:book)
    end
end
