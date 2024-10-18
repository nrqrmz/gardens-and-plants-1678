class CreatePlants < ActiveRecord::Migration[7.1]
  def change
    create_table :plants do |t|
      t.references :garden, null: false, foreign_key: true
      t.string :name
      t.string :img_url

      t.timestamps
    end
  end
end
