class ArticlesController < ApplicationController

    def index
        @content = ArticleContent.find(params[:id])
        @article = Article.new
        @articles = Article.where(content_id: @content.id)
        #@articles = Article.all
    end

    def update
	    content = ArticleContent.find(params[:id])
	    content.update(article_content_params)
	    redirect_to articles_path
	end

    def edit 
        @article = Article.find(params[:id])
        @contents = ArticleContent.find(params[:name])
        @content = params[:name]
	    @articles = Article.where(content_id: @content)
    end

    def preview
        @content = ArticleContent.find(params[:id])
	    @articles = Article.where(content_id: @content)
    end

    def article_update 
        content = params[:name]
        article = Article.find(params[:id])
	    article.update(article_params)
	    redirect_to articles_path(content)
    end
    
    def create
        content = ArticleContent.find(params[:id])
        article = Article.new(article_params)
        article.content_id = content.id   
        article.save
        redirect_to articles_path
    end

    def destroy
        content = params[:name]
        article = Article.find(params[:id])
        article.destroy
        redirect_to articles_path(content)
    end

private 

    def article_content_params
        params.require(:article_content).permit(:article_content_title,:article_content_thumbnail,:article_content_comment,:article_content_genre,:article_content_name,:article_content_day,:article_content_release)
    end

    def article_params
        params.require(:article).permit(:content_id,:article_heading_text,:article_top_text,:article_under_text,:article_image)
    end

end
