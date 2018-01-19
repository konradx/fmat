class AddInvoiceToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_reference :customers, :invoice, foreign_key: true, index: true
  end
end
