# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
catalogs = [{name: "Bollywood", ctype: "gallery"},
 {name: "Tollywood", ctype: "gallery"},
 {name: "sandlywood", ctype: "gallery"},
 {name: "National", ctype: "poll"},
 {name: "State-wise", ctype: "poll"}
]
catalogs.each do |catalog|

    Catalog.create!(catalog)

    #Catalog.create!(catalogs)
end