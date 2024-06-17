class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :zip_code, null: false
      t.string :street, null: false
      t.string :neighborhood, null: false
      t.string :number, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :complement

      t.timestamps
    end

    add_index :addresses, :zip_code, unique: true
  end
end
