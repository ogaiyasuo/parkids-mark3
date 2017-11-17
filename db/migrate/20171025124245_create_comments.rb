class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      #ユーザーコメントテーブル
      t.integer   :content_id      #アソシェーションのためのID
      t.string    :commented_name#コメントユーザーネーム
      t.text      :commented_text#コメントテキスト
      t.string  :commented_day#コメントした日時
           
      t.timestamps
    end
  end
end
