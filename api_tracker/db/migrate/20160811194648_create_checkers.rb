class CreateCheckers < ActiveRecord::Migration[5.0]
  def change
    create_table :checkers do |t|
      t.datetime :date
      t.text :check_body
      t.references :tracker, foreign_key: true

      t.timestamps
    end
  end
end
