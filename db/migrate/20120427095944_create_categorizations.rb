class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.references :category
      t.references :product

      t.timestamps
    end
    add_index :categorizations, :category_id
    add_index :categorizations, :product_id
  end
end
