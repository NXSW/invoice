class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :company_no
      t.string  :name
      t.string  :sex
      t.string  :bill_to_id
      t.integer :cost
      t.integer :company_id
      t.integer :upper_standerd
      t.integer :lower_standerd
      t.timestamps
    end
  end
end
