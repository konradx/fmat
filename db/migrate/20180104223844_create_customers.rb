class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :tax_identificator
      t.string :representative
      t.text :address

      t.timestamps
    end
  end
end
