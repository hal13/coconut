class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.references :flight, index: true, foreign_key: true
      t.string :name
      t.decimal :baggage

      t.timestamps null: false
    end
  end
end
