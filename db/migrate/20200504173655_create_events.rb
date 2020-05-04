class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string "event"
      t.string "location"
      t.datetime "start_time"
      t.datetime "end_time"
      t.references :calendar, foreign_key: true
      t.timestamps
    end
  end
end
