class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :member_no
      t.date :birthday
      t.integer :sex, index: true
      t.integer :company_id, default: 0, index: true
      t.integer :bill_to_id, default: 0, index: true
      t.integer :sales_staff_id, default: 0, index: true
      t.integer :payment_terms
      t.integer :unit_price
      t.integer :upper_standerd
      t.integer :lower_standerd
      t.string  :dev_content
      t.timestamps
    end
  end
end
