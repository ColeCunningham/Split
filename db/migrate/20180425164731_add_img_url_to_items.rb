class AddImgUrlToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :imgUrl, :string
  end
end
