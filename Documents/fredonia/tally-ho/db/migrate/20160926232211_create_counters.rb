class CreateCounters < ActiveRecord::Migration[5.0]
  def change
    create_table :counters do |t|
      t.belongs_to :courses
      t.belongs_to :users
      t.timestamps
    end
  end
end
