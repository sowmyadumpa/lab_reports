# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

LabCategory.create(name:'blood', description:"all blood related data")
LabCategory.create(name:'urine', description:"all urine related data")
LabCategory.create(name:'lipid profile', description:"all blood related data")

LabTest.create(lab_category_id: 1, name: 'plasma glucose', description: "plasma glucose", range:"80-140 mg/dl")
LabTest.create(lab_category_id: 1, name: 'Blood  Urea', description: "blood urea", range: "0.8-1.2 mg/dl")

LabTest.create(lab_category_id: 2, name: 'ph', description: "ph", range: "upto 7")
LabTest.create(lab_category_id: 2, name: 'Reaction', description: "reaction" , range: "acidic")
