class CreateTrackers < ActiveRecord::Migration[5.0]
  def change
    create_table :trackers do |t|
      t.string :api_name
      t.string :url
      t.text :url_body
      t.text :notes
      t.text :message
      t.text :url_check

      t.timestamps
    end
  end
end
