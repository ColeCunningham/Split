class RemoveDescriptionFromItems < ActiveRecord::Migration[5.1]
  def up
    remove_column :items, :description
  end
  
  def down
    add_column :items, :description, :text
  end

  # def change
  #   remove_column :items, :description, :text
  # end
end
