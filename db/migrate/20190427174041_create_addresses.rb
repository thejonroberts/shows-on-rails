class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :addressable, foreign_key: true
      t.string :line_one
      t.string :line_two
      t.string :city
      t.string :state
      t.string :country
      t.string :country_code
      t.string :zip_code

      t.timestamps
    end
  end
end
