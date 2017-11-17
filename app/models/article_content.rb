class ArticleContent < ApplicationRecord

    attachment :article_content_thumbnail#サムネイル画像


   #has_many  :articles,         dependent: :destroy
   
end
