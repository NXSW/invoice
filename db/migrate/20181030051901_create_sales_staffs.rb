class CreateSalesStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :sales_staffs do |t|
      t.string :name
      t.integer :bill_to_id
      t.string :phone_num
      t.string :mail
      t.string :mail_cc_1
      t.string :mail_cc_2
      t.timestamps
    end
  end
end
