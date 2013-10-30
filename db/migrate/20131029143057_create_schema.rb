class CreateSchema < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

    create_table :posts do |t|
      t.integer :category_id
      t.string :title
      t.string :description
      t.integer :price
      t.string :email
      t.string :secret_id
      t.timestamps
    end  
  end
end
