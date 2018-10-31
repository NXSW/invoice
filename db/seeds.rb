# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Member.count == 0
  BillTo.create!(
    [
      { name: 'Zero' },
      { name: 'レバテック' },
      { name: 'SES人材部' }
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
