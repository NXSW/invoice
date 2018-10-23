class CreateBillTos < ActiveRecord::Migration[5.2]
  def change
    create_table :bill_tos do |t|
      t.string :name
      t.string :charge_people
      t.string :email_1
      t.string :email_2
      t.string :email_cc_1
      t.string :email_cc_2
      t.timestamps
    end
  end
end
