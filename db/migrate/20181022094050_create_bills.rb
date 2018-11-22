class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :month
      t.integer :pay_period
      t.string  :member_name
      t.integer :member_sex
      t.string  :dev_content
      t.integer :unit_price
      t.integer :work_time
      t.integer :upper_standerd
      t.integer :lower_standerd
      t.integer :bill_content_id
      t.string :cal_rule
      t.date :from
      t.date :to
      t.integer :term
      t.integer :payment_terms
      t.string :bill_to_name
      t.string :bill_to_charge_people
      t.string :company_name
      t.string :tel_1
      t.string :mail_1
      t.string :address_1
      t.string :postno_1
      t.string :bank_account_1
      t.timestamps
    end
  end
end
