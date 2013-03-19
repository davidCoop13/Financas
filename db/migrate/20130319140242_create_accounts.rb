class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :number
      t.references :transactions
      t.references :bill
      t.references :invoice

      t.timestamps
    end
    add_index :accounts, :transactions_id
    add_index :accounts, :bill_id
    add_index :accounts, :invoice_id
  end
end
