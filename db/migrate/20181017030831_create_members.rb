class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :Company_number
      t.string  :name
      t.string  :sex
      t.string  :workplace
      t.integer :cost
      t.integer :upper_standerd
      t.integer :under_standerd
      t.timestamps
    end
  end
end
