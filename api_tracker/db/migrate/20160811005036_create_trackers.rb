class CreateTrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :trackers do |t|
      t.string :api_name
      t.string :url
      t.text :notes

      t.timestamps
    end
  end
end
