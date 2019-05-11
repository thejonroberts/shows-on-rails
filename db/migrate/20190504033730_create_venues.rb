class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name, null: false
      t.string :site_url
      t.string :phone
      t.string :email
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
