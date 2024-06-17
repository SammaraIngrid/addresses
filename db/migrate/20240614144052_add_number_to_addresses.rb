class AddNumberToAddresses < ActiveRecord::Migration[7.1]
  def change
    add_column :addresses, :number, :string, null: false, after: :zip_code
  end
end
