class CreateConversions < ActiveRecord::Migration[7.0]
  def change
    create_table :conversions do |t|
      t.text :input, null: false
      t.text :output, null: false

      t.timestamps
    end
  end
end
