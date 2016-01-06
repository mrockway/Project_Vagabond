# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cities = City.create([{ name: 'San Francisco', description: 'Enter Desc'}, 
                                            { name: 'Atlanta', description: 'Enter Desc Here'}, 
                                            { name: 'London', description: 'Enter Desc Here'}, 
                                            { name: 'Gibraltar', description: 'Enter Desc Here'},
                                            { name: 'Portland', description: 'Enter Desc Here'},
                                            { name: 'Sydney', description: 'Enter Desc Here'}
                                        ])