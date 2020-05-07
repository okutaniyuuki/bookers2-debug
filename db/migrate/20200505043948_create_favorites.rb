class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.text :comment
      t.integer :user_id
      t.string :profile_image_id

      t.timestamps
    end
  end
end
