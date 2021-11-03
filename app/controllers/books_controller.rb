class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]
    before_action :set_authors

    def index
        @books = Book.all
    end

    def show
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.create(book_params)
        redirect_to books_path
    end
    
    def edit
    end

    def update
        
    end


    private

    def set_book
        id = params[:id]
        @book = Book.find(id)
    end

    def set_authors
        @authors = Author.all
    end

    def book_params
        params.require(:book).permit(:title,:author_id)        
    end

end
