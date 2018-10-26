class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :company_no
      t.string :tel_1
      t.string :tel_2
      t.string :mail_1
      t.string :mail_2
      t.string :address_1
      t.string :address_2
      t.string :postno_1
      t.string :postno_2
      t.string :bank_account_1
      t.string :bank_account_2
      t.timestamps
    end
  end
end
