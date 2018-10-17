# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Member.create(
  [
  	{ name: '王', Company_number: '001', sex: '男', workplace: 'NEXT', cost: 300000, upper_standerd: 180, upper_standerd: 140 },
  	{ name: '甲田', Company_number: '002', sex: '女', workplace: 'NEXT', cost: 200000, upper_standerd: 180, upper_standerd: 140 },
  	{ name: '前森', Company_number: '003', sex: '男', workplace: 'NEXT', cost: 200000, upper_standerd: 180, upper_standerd: 140 }
  ]
)