class CreateBillContents < ActiveRecord::Migration[5.2]
  def change
    create_table :bill_contents do |t|
      t.string :content
      t.integer :price
    end
  end
end
