class AuthorsController < ApplicationController
    before_action :set_author, only: [:show, :edit, :update, :destroy]

    def index
        @authors = Author.all
    end

    def show
    end

    def new
        @author = Author.new
    end

    def create
        @author = Author.create(author_params)
        redirect_to authors_path
    end


    private

    def set_author
        id = params[:id]
        @author = Author.find(id)
    end

    def author_params
        params.require(:author).permit(:name)        
    end
end
