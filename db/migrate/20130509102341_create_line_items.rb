class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :product_id
      t.integer :quantity, defalut: 1

      t.timestamps
    end
  end
end
