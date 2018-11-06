if Member.count == 0
  BillTo.create!(
    [
      {
        name: 'Zero',
        phone_num_1: '0311112222',
        email_1: 'zero@gmail.com'
      },
      {
        name: 'レバテック',
        phone_num_1: '0344445555',
        email_1: 'levtech@gmail.com'
      },
      {
        name: 'SES人材部',
        phone_num_1: '0366667777',
        email_1: 'ses@gmail.com'
      }
    ]
  )
  Company.create!(
    [
      {
        name: 'ネクスト株式会社'
      },
      {
        name: 'ネクストエンジニア会社'
      }
    ]
  )
  SalesStaff.create!(
    [
      {
        name: '大場',
        bill_to_id: 1
      },
      {
        name: '大木',
        bill_to_id: 2
      },
      {
        name: '田中',
        bill_to_id: 3
      }
    ]
  )
  Member.create!(
    [
    	{
        name: '王',
        sex: 0,
        unit_price: 300000,
        upper_standerd: 180,
        lower_standerd: 140,
        bill_to_id: 1,
        sales_staff_id: 1,
        company_id: 1,
      },
      {
        name: '甲田',
        sex: 1,
        unit_price: 400000,
        upper_standerd: 180,
        lower_standerd: 140,
        bill_to_id: 2,
        sales_staff_id: 2,
        company_id: 1,
      },
      {
        name: '前森',
        sex: 0,
        unit_price: 400000,
        upper_standerd: 200,
        lower_standerd: 140,
        bill_to_id: 3,
        sales_staff_id: 3,
        company_id: 2,
      },
    ]
  )
end

if User.count == 0
  user = User.new({
      email: 'admin@admin.jp',
      password: 'adminadmin',
      password_confirmation: 'adminadmin'
  })
  user.save!
end
