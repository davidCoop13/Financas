class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :number
      t.date :date
      t.string :description
      t.float :amount
      t.boolean :credit
      t.references :account

      t.timestamps
    end
    add_index :transactions, :account_id
  end
end
