class CreateStaffProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :staff_profiles do |t|
      #スタッフプロフィールテーブル
      t.integer   :staff_id#スタッフ＿ID
      t.string    :staff_profile_nickname#スタッフニックネーム
      t.string    :staff_profile_image#スタッフプロフィール画像

      t.timestamps
    end
  end
end
