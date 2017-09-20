class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.float :amount
      t.string :status, default: 'pending'

      t.timestamps
    end
  end
end
