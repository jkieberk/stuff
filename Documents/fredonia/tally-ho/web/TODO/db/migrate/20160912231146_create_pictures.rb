class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :href
      t.string :description
      t.integer :order

      t.timestamps
    end
  end
end
