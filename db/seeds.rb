# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Wine.create(name: 'Midsummer Dream', winery: 'White Dove', country: 'USA', average_rating: 2, year: 2010, varietal: 'Cabernet Sauvignon')
Wine.create(name: 'Summer Delight', winery: 'Big Sky', country: 'USA', average_rating: 5, year: 1998, varietal: 'Sauvignon Blanc')
Wine.create(name: 'Autumn Leaves', winery: 'Babbleville', average_rating: 2, country: 'Italy', year: 2010, varietal: 'Sauvignon Blanc')
Wine.create(name: 'Summer Roast', winery: 'Big Sky', average_rating: 0, country: 'USA', year: 1997, varietal: 'Merlot')
Wine.create(name: 'Sweet Escape', winery: 'Monet Gardens', average_rating: 0, country: 'France', year: 1993, varietal: 'Chardonnay')
Wine.create(name: 'Sweet Dreams', winery: 'Monet Gardens', average_rating: 0, country: 'France', year: 1991, varietal: 'Merlot')
Wine.create(name: 'Au Revoir', winery: 'Monet Gardens', average_rating: 4.5, country: 'France', year: 1993, varietal: 'Cabernet Sauvignon')
Wine.create(name: 'Paris Spring', winery: 'Effiel Tower', country: 'France', year: 1984, varietal: 'Chardonnay')

LogEntry.create(wine_id: 1, name: 'Anita Miller', rating: 3, location: 'San Francisco, CA', comments: 'Yummy wine.  Good body and excellent color', tasted_on: DateTime.strptime("09/01/2009", "%m/%d/%Y"))
LogEntry.create(wine_id: 2, name: 'Mary Jane', rating: 5, location: 'Paris, France', comments: 'Excellent wine.', tasted_on: DateTime.strptime("12/01/2014", "%m/%d/%Y"))
LogEntry.create(wine_id: 1, name: 'Mark Smith', rating: 1, location: 'Provence, France', comments: 'Disgusting.  Bitter tasting', tasted_on: DateTime.strptime("03/15/2015", "%m/%d/%Y"))
LogEntry.create(wine_id: 7, name: 'Anita Miller', rating: 4, location: 'San Francisco, CA', comments: 'Best wine.  Excellent body and good color', tasted_on: DateTime.strptime("06/20/2015", "%m/%d/%Y"))
LogEntry.create(wine_id: 3, name: 'Mary Jane', rating: 2, location: 'Paris, France', comments: 'Worst wine.  Lacks body and very bitter', tasted_on: DateTime.strptime("11/11/2015", "%m/%d/%Y"))
LogEntry.create(wine_id: 7, name: 'Mark Smith', rating: 5, location: 'Provence, France', comments: 'It is average at best.  Little bitter tasting and has aftertaste.', tasted_on: DateTime.strptime("09/21/20015", "%m/%d/%Y"))