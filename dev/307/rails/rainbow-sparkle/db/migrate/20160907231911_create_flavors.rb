class CreateFlavors < ActiveRecord::Migration[5.0]
  def change
    create_table :flavors do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
