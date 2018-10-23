class CreateBillTos < ActiveRecord::Migration[5.2]
  def change
    create_table :bill_tos do |t|
      t.string :name

      t.timestamps
    end
  end
end
