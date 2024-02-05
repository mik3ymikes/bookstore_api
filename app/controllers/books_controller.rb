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
        render json: {error: "unable to create", details: book.errors}
    end
    end



    def update
        book=Book.find(params[:id])
        if book.update(book_params)
            render json: book
           else
            render json: {error: "unable to show"}
           end

    end



    def destroy
      book=Book.find(params[:id])
      if book.destroy
        render json: book
    else
        render json:{error: "unalbe to destroy"}
    
    end

    end




def book_params
    params.require(:book).permit(:title, :author_id)
end
end
