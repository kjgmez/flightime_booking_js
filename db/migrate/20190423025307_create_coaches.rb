class CreateCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :coaches do |t|
      t.string :name
      t.integer :level
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
