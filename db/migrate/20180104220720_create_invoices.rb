class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :reference_number
      t.date :issue_date
      t.date :due_date
      t.string :status
      t.float :tax
      t.float :discount
      t.decimal :net_amount
      t.decimal :gross_amount
      t.decimal :paid_amount
      t.string :currency

      t.timestamps
    end
  end
end
