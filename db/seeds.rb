# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cities = City.create([{ name: 'San Francisco', description: "A crimson bridge, cable cars, a sparkling bay, and streets lined with elegant Victorian homes—San Francisco is undeniably one of the world’s great cities. Located along the Northern California at the state’s distinctive bend in the coast, the region has an alluring magic that stretches beyond the bay to diverse cities with nightlife and trend-setting cuisine."}, 
											{ name: 'Atlanta', description: "With 5.5 million residents in the metro and outlying areas, the so-called capital of the South continues to experience explosive growth thanks to southbound Yankees and international immigrants alike. It's also booming as a tourist destination. Beyond the big-ticket downtown attractions you'll find a constellation of superlative restaurants and a palpable Hollywood influence.  Without natural boundaries to control development, Atlanta keeps growing. Yet for all this suburbanization, Atlanta is a pretty city covered with trees and elegant homes. Distinct neighborhoods are like friendly small towns stitched together. The economy is robust, the population is young and creative, and racial tensions are minimal in 'the city too busy to hate."}, 
											{ name: 'London', description: "London is immersed in history, with more than its share of mind-blowing antiquity and historic splendour. London’s buildings are eye-catching milestones in the city’s unique and compelling biography, and a great many of them – the Tower of London, Westminster Abbey, Big Ben – are familiar landmarks. There’s more than enough innovation (the Shard, the London Eye, the planned Garden Bridge) to put a crackle in the air, but it never drowns out London’s well-preserved, centuries-old narrative. Architectural grandeur rises up all around you in the West End, ancient remains dot the City and charming pubs punctuate the banks of the Thames. Take your pick."}, 
											{ name: 'Gibraltar', description: "Red pillar boxes, fish-and-chip shops and creaky 1970s seaside hotels; Gibraltar – as British writer Laurie Lee once commented – is a piece of Portsmouth sliced off and towed 500 miles south. As with many colonial outposts, ‘the Rock’ overstates its Britishness, a bonus for pub-grub and afternoon-tea lovers, but a confusing double-take for modern Brits who thought their country had moved on since the days of Lord Nelson memorabilia. Poised strategically at the jaws of Europe and Africa, Gibraltar, with its Palladian architecture and camera-hogging Barbary macaques, makes for an interesting break from Cádiz province's white towns and tapas. Playing an admirable supporting role is the swashbuckling local history; lest we forget, the Rock has been British longer than the United States has been American."},
											{ name: 'Portland', description: "Dynamic yet mellow, Oregon's largest metropolis boasts a vibrant downtown across the Willamette River from charming neighborhoods full of friendly – and often zany – people. It hums with a youthful vitality and is home to a landslide of liberal idealists, but it's located in a state where back roads brim with Republican red. Here Gore-Tex rain jackets in fine restaurants are as common as sideburns on a hipster. A haven for eco-activists, cyclists, grungesters, outdoor nuts, vegans, gardeners and dog-lovers, all supporting countless brewpubs, coffeehouses, knitting circles, lesbian potlucks and book clubs, Portland is a livable metropolis with pretty neighborhoods and a friendly, small-town atmosphere. It's an up-and-coming destination that has finally found itself but keeps redefining its ethos with every controversy (fluoride, anyone?). Racially progressive, culturally diverse and politically charged, the city is also – as many folks from out of state have discovered – an awesome spot to plant roots, settle in and chill out for while."},
											{ name: 'Sydney', description: "Book a window seat for your flight to Sydney: day or night, this city sure is good-lookin’. Scratch the surface and it only gets better.  Defined just as much by its rugged Pacific coastline as its exquisite harbour, Sydney relies on its coastal setting to replenish its reserves of charm; venture too far away from the water and the charm suddenly evaporates. Jump on a ferry and Sydney's your oyster – the harbour prises the city's two halves far enough apart to reveal an abundance of pearls. On the coast, Australia ends abruptly in sheer walls of sandstone punctuated by arcs of golden sand. In summer they're covered with bronzed bodies making the most of a climate that encourages outdoor socialising, exercising, flirting and fun."}
										])

users = User.create([{ email: 'eddy@email', first_name: 'Eddy', last_name: 'Chang', current_city: 'San Francisco', password: '123456', image_file_name: image, image_content_type: 'image/jpeg', image_file_size: '2302954', image_updated_at: '2016-01-05 18:25:45.674781' },
										 { email: 'victoria@email', first_name: 'Victoria', last_name: 'Frambach', current_city: 'San Francisco', password: '123456', image_file_name: image, image_content_type: 'image/jpeg', image_file_size: '2302954', image_updated_at: '2016-01-05 18:25:45.674781' }])

posts = Post.create([{ title: "The City by the Bay", user_id: 1, city_id: 1, content: "On my way from Hong Kong to New York, I stopped in San Francisco for a day. I walked from the Geary St art galleries up Grant Ave to Waverly Place, just as temple services were starting. The fog was scented with incense and roast duck. In the basement of City Lights bookstore, near the Muckraking section, I noticed a sign painted by a 1920s cult: 'I am the door.' It's true. San Francisco is the threshold between East and West, body and soul, fact and fiction. That was 20 years ago. I'm still here. You have been warned." },
										 { title: "The City by the Bay", user_id: 1, city_id: 1, content: "On my way from Hong Kong to New York, I stopped in San Francisco for a day. I walked from the Geary St art galleries up Grant Ave to Waverly Place, just as temple services were starting. The fog was scented with incense and roast duck. In the basement of City Lights bookstore, near the Muckraking section, I noticed a sign painted by a 1920s cult: 'I am the door.' It's true. San Francisco is the threshold between East and West, body and soul, fact and fiction. That was 20 years ago. I'm still here. You have been warned." }	

										])