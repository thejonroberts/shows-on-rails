class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :addressable, polymorphic: true, index: true
      t.string :line_one
      t.string :line_two
      t.string :city
      t.string :state
      t.string :country
      t.string :country_code
      t.string :zip_code
      t.st_point :lonlat, geographic: true

      t.timestamps
    end
  end
end
