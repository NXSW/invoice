class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string  :name
      t.integer  :sex
      t.string  :dev_content
      t.string  :work_place
      t.integer :cost
      t.integer :payment_terms
      t.integer  :bill_to_id
      t.integer :company_id
      t.integer :upper_standerd
      t.integer :lower_standerd
      t.timestamps
    end
  end
end
