class CreateArticleContents < ActiveRecord::Migration[5.1]
  def change
    create_table :article_contents do |t|
      #記事内容をまとめたテーブル

      t.string    :article_content_thumbnail_id#記事サムネイル
      t.text      :article_content_comment#記事コメント
      t.string    :article_content_title#記事タイトル
      t.string    :article_content_genre#ジャンル
      t.string    :article_content_name#記事作成スタッフ     
      t.string    :article_content_day#記事作成日時
      t.boolean   :article_content_release, default: false, null: false
      #記事作成日時      

      t.timestamps
    end
  end
end
