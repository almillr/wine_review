# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Wine.create(name: 'Midsummer Dream', winery: 'White Dove', country: 'USA', year: 2010, varietal: 'Cabernet Sauvignon')
Wine.create(name: 'Summer Delight', winery: 'Big Sky', country: 'USA', year: 1998, varietal: 'Sauvignon Blanc')
Wine.create(name: 'Autumn Leaves', winery: 'Babbleville', country: 'Italy', year: 2010, varietal: 'Sauvignon Blanc')
Wine.create(name: 'Summer Roast', winery: 'Big Sky', country: 'USA', year: 1997, varietal: 'Merlot')
Wine.create(name: 'Sweet Escape', winery: 'Monet Gardens', country: 'France', year: 1993, varietal: 'Chardonnay')
Wine.create(name: 'Sweet Dreams', winery: 'Monet Gardens', country: 'France', year: 1991, varietal: 'Merlot')
Wine.create(name: 'Au Revoir', winery: 'Monet Gardens', country: 'France', year: 1993, varietal: 'Cabernet Sauvignon')
Wine.create(name: 'Paris Spring', winery: 'Effiel Tower', country: 'France', year: 1984, varietal: 'Chardonnay')