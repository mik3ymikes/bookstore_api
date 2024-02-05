class BooksController < ApplicationController
   def index
    book=Book.all 
    render json: book
   end


   def show
  book=Book.find(params[:id])
  if book.save
    render json: book
   else
    render json: {error: "unable to show"}
   end
    end



    def create
      book=Book.create(book_params)
      if book.save
        render json: book
    else
        render json: {error: "unable to create"}
    end
    end











def book_params
    params.require(:book).permit(:title)
end
end
