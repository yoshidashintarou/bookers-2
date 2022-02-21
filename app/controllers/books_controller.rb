class BooksController < ApplicationController
  
 def new
    @book = Book.new
 end

  
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to users_path
  end

  def index
  end

  def show
  end

  def destroy
  end

  
  # 投稿データのストロングパラメータ
  private

  def user_params
    params.require(:user).permit(:name, :image, :caption)
  end
end 

