class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.string :category
      t.string :color
      t.string :size
      t.string :picture_url
      t.string :description
      t.float :price
      t.boolean :availability

      t.timestamps
    end
  end
end
