class FrontContentsController < ApplicationController

    def index
        @contents = ArticleContent.where(article_content_release: true).reverse_order
        
    end

    def edit
        @count = 0
        @content = ArticleContent.find(params[:id])
        @articles = Article.where(content_id: @content.id)
        @comment = Comment.new
        @comments = Comment.where(content_id: @content.id)

    end

    def create
        content = ArticleContent.find(params[:id])
        comment = Comment.new(comment_params)
        comment.content_id = content.id   
        comment.save
        redirect_to front_press_path
    end

private 

    def comment_params
        params.require(:comment).permit(:commented_name,:commented_text,:commented_day)
    end

end
