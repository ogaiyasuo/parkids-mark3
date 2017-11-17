class ContentsController < ApplicationController



    def index

        @content = ArticleContent.new
        @contents = ArticleContent.all.reverse_order
 
    end
    
    def create

        contents = ArticleContent.new(article_content_params)   
        contents.save
        redirect_to contents_path

    end
        
    def destroy_article
        content = ArticleContent.find(params[:id])
        articles = Article.where(content_id: content.id)
        articles.destroy
        content.destroy
		redirect_to destroy_content_path
    end

    def destroy

        content = ArticleContent.find(params[:id])
        articles = Article.where(content_id: content.id)
        comment = Comment.where(content_id: content.id)
        comment.delete_all
        articles.delete_all
        content.destroy
		
        #content = ArticleContent.find(params[:id])
		#content.destroy
		redirect_to contents_path
    end

private 

    def article_content_params
        params.require(:article_content).permit(:article_content_title,:article_content_thumbnail,:article_content_comment,:article_content_genre,:article_content_name,:article_content_day,:article_content_release)
    end


end