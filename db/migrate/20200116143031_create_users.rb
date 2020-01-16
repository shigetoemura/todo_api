class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.integer :todo, :default => 60
      t.string :area
      t.string :organization

      t.timestamps
    end
  end
end
