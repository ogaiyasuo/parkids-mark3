class Article < ApplicationRecord

    attachment :article_image
    #articleのテーブルに書いたarticle_image_idから
    #_idの文字を抜いたものをattachmentで定義する
    #画像データはarticle_imageのカラムへ格納させて
    #画像の名前のデーターをarticle_imageへと格納させるためである

    # belongs_to :article_content

end
