class CreateUserImages < ActiveRecord::Migration[6.0]
  def change
    create_table :user_images do |t|
      t.references :user, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
