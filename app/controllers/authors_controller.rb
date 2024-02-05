class AuthorsController < ApplicationController

def index
author=Author.all()
render json: author
end

def show
author=Author.find(params[:id])
if author.save
    render json: author
   else
    render json: {error: "unable to show"}
   end

end


def create
author=Author.create(author_params)
if author.save
    render json: author
else
    render json: {error: "unable to create"}
end

end


def update
    author=Author.find(params[:id])
    if author.update(author_params)
        render json: author
    else
        render json: {error: "unable to create"}
    end
end


def destroy
author=Author.find(params[:id])
if author.destroy
    render json: author
else
    render json:{error: "unalbe to destroy"}

end
end



def author_params
    params.require(:author).permit(:name)
end

end
