class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :number
      t.date :payment_date
      t.string :payment_method
      t.float :amount
      t.boolean :paid
      t.references :account
      t.references :category

      t.timestamps
    end
    add_index :invoices, :account_id
    add_index :invoices, :category_id
  end
end
