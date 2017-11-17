class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      #記事テーブル

      t.integer   :content_id      #アソシェーションのためのID
      t.string    :article_heading_text#記事テキスト上
      t.text      :article_top_text#記事テキスト上
      t.string    :article_image_id#記事＿画像
      t.text      :article_under_text#記事テキスト下
      
      t.timestamps
    end
  end
end
