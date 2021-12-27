class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :url_photo_logo
      t.string :name
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
