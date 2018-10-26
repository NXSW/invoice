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
      { name: 'レバテック' }
    ]
  )
  Member.create!(
    [
    	{ name: '王', sex: 0, work_place: '日立', cost: 300000, upper_standerd: 180, lower_standerd: 140, bill_to_id: 1 },
    	{ name: '甲田', sex: 0, work_place: 'NEXT', cost: 20000, upper_standerd: 180, lower_standerd: 140, bill_to_id: 2 },
    	{ name: '前森', sex: 0, work_place: 'NEXT', cost: 20000, upper_standerd: 180, lower_standerd: 140, bill_to_id: 3 }
    ]
  )
end
