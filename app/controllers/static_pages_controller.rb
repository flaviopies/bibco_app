class StaticPagesController < ApplicationController

  def home
    if signed_in?
      @book  = current_user.books.build
      @feed_items = current_user.feed.paginate(page: params[:page], per_page: 10)
      if params[:book_search]
        @book_search_result_itens = Book.book_search(params[:book_search]).order("created_at DESC")
      else
        @book_search_result_itens = Book.all.order('created_at DESC')
      end
    end
  end
  
  def help
  end
  
  def about
  end
  
  def contact
  end
  
end
