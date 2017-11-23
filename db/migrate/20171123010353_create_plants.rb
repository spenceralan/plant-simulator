class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'pgcrypto'
    create_table :plants, id: :uuid do |t|
      t.integer :number_of_waterings, default: 1
      t.integer :number_of_sunnings, default: 1
      t.integer :number_of_nutrients, default: 1
      t.boolean :alive, default: true

      t.timestamps
    end
  end
end
