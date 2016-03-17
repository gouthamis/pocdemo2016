class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.string :designation
      t.date :doj

      t.timestamps null: false
    end
  end
end
