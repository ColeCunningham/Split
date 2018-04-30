class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :name
      t.integer :quantity
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
