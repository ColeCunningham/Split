class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :date

      t.timestamps
    end
  end
end
