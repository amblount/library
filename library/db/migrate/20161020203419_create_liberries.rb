class CreateLiberries < ActiveRecord::Migration[5.0]
  def change
    create_table :liberries do |t|
      t.string :name
      t.integer :floor_count
      t.integer :floor_area

      t.timestamps
    end
  end
end
