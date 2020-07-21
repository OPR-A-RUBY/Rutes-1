class ArticlesController < ApplicationController

    def new
    	@article = Article.new
    end
    
    def create
    	@article = Article.new(article_params)

    	if @article.save
    		redirect_to @article
    	else
    		render 'new'
    	end

    end
    
    def index
    	@articles = Article.all
    end
    
    def show
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end

  private
  	def article_params
  		params.require(:article).permit(:title, :body)
  	end
end
