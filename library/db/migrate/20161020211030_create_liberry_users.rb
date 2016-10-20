class CreateLiberryUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :liberry_users do |t|
      t.belongs_to :liberry, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
