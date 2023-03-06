require_relative '../setup'

require_relative '../lib/store'


# t.column :name, :string
# t.column :annual_revenue, :integer
# t.column :mens_apparel, :boolean
# t.column :womens_apparel, :boolean
# t.timestamps null: false

# - Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# - Richmond (annual_revenue of 1260000 carries women's apparel only)
# - Gastown (annual_revenue of 190000 carries men's apparel only)

stores = [
  Store.new(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true),
  Store.new(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true),
  Store.new(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
]

stores.each { |i|
  i.save
}

puts "Store count: #{Store.count}"
