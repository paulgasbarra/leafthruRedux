class ArticlesController < ApplicationController

  def index
    bookmarks = Bookmark.where(reader_id: current_reader.id.to_s)
    @articles   = bookmarks.map do |bookmark|
      Article.find(bookmark.article_id)
    end
  end

  def create
    article = Article.create(article_params) 
    if article.save
      current_reader.articles << article 
    else
      article = Article.find_by(url: params[:article][:url])
      if Bookmark.exists?(article_id: article.id.to_s, reader_id: current_reader.id.to_s)
        flash[:notice] = 'Already saved!'
      else          
        current_reader.articles << article         
      end
    end  
    redirect_to '/feed'
  end

  def show
  end

  def destroy
    #Delete from join table
    id = Bookmark.find_by(article_id: params[:id].to_s)
    Bookmark.delete(id)
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:url, :title, :publication, :shared_by, :extract, :date)
  end
end
