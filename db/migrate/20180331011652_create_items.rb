class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :date

      t.timestamps
      
    self.up
      add_column :items, cost, :double
    
      
    end
  end
end
