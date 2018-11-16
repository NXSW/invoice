class CreateCorporationBillContents < ActiveRecord::Migration[5.2]
  def change
    create_table :corporation_bill_contents do |t|
      t.timestamps
    end
  end
end
