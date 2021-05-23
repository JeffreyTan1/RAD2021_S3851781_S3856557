# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#


#Men's items

m1 = Item.create(price: 40.00, name: "Chino Pants", description: "Stylish chino pants made from Italian cloth.",
image: "RedChinoPants.jpg", popularity: 0, collection: "Mens", color1: "Red", color2: "Blue", color3: "Black", small: 1, medium: 1, large: 1, keyword: "Stylish", purchase_count: 0, sl_count: 0)

m2 = Item.create(price: 35.50, name: "Wool Sweater", description: "Wool sweater to keep you warm in the winter.",
image: "RedWoolSweater.jpg", popularity: 0, collection: "Mens", color1: "Red", color2: "Yellow", color3: "Green", small: 0, medium: 1, large: 1, keyword: "Winter", purchase_count: 0, sl_count: 0)

m3 = Item.create(price: 30.50, name: "Green Sweater", description: "Luxurious sweater made from Nepalese cashmere.",
image: "GreenSweater.jpg", popularity: 0, collection: "Mens", color1: "Green", color2: "Grey", color3: "Black", small: 1, medium: 1, large: 0, keyword: "Winter", purchase_count: 0, sl_count: 0)

m4 = Item.create(price: 23.50, name: "Black Turtle Neck", description: "This turtle neck adds class to any outfit.",
image: "BlackTurtleNeck.jpg", popularity: 0, collection: "Mens", color1: "Black", color2: "White", color3: "Yellow", small: 1, medium: 1, large: 1, keyword: "Stylish", purchase_count: 0, sl_count: 0)

m5 = Item.create(price: 75.00, name: "Blue Suit Jacket", description: "Stylish suit jacket made from Italian silk.",
image: "BlueSuitJacket.jpg", popularity: 0, collection: "Mens", color1: "Blue", color2: "Black", color3: "Grey", small: 0, medium: 1, large: 0, keyword: "Stylish", purchase_count: 0, sl_count: 0)

m6 = Item.create(price: 85.50, name: "Denim Jacket", description: "This denim jacket is perfect for casual events.",
image: "DenimJacket.jpg", popularity: 0, collection: "Mens", color1: "Denim", color2: nil, color3: nil, small: 1, medium: 1, large: 1, keyword: "Casual", purchase_count: 0, sl_count: 0)

#Women's items

w1 = Item.create(price: 40.00, name: "Denim Overalls", description: "Denim overalls for a retro look.",
image: "DenimOveralls.jpg", popularity: 0, collection: "Womens", color1: "Denim", color2: nil, color3: nil, small: 1, medium: 1, large: 0, keyword: "Casual", purchase_count: 0, sl_count: 0)

w2 = Item.create(price: 70.50, name: "Blazer", description: "Stylish blazer to make your outfit pop.",
image: "PinkBlazer.jpg", popularity: 0, collection: "Womens", color1: "Pink", color2: "White", color3: "Yellow", small: 0, medium: 1, large: 1, keyword: "Stylish", purchase_count: 0, sl_count: 0)

w3 = Item.create(price: 28.50, name: "Blouse", description: "An eye-catching blouse for a sunny day.",
image: "RedBlouse.jpg", popularity: 0, collection: "Womens", color1: "Red", color2: "Yellow", color3: "White", small: 1, medium: 0, large: 1, keyword: "Casual", purchase_count: 0, sl_count: 0)

w4 = Item.create(price: 25.50, name: "Dress Shirt", description: "A must for a summer professional's wardrobe.",
image: "WhiteShirt.jpg", popularity: 0, collection: "Womens", color1: "White", color2: "Grey", color3: "Black", small: 1, medium: 1, large: 1, keyword: "Work", purchase_count: 0, sl_count: 0)

w5 = Item.create(price: 45.00, name: "Polka Dress", description: "Spotted sun-dress made from comfortable Italian cloth.",
image: "YellowDress.jpg", popularity: 0, collection: "Womens", color1: "Yellow", color2: "Red", color3: "Pink", small: 1, medium: 0, large: 0, keyword: "Casual", purchase_count: 0, sl_count: 0)

w6 = Item.create(price: 17.50, name: "Slim T-Shirt", description: "Comfortable and classic t-shirt.",
image: "RedTShirt.jpg", popularity: 0, collection: "Womens", color1: "Red", color2: "Black", color3: "White", small: 1, medium: 1, large: 1, keyword: "Casual", purchase_count: 0, sl_count: 0)


#Kids's items

k1 = Item.create(price: 35.00, name: "Denim Jeans", description: "Denim jeans that you can take to any event.",
image: "DenimJeans.jpg", popularity: 0, collection: "Kids", color1: "Denim", color2: nil, color3: nil, small: 1, medium: 1, large: 1, keyword: "Casual", purchase_count: 0, sl_count: 0)

k2 = Item.create(price: 65.50, name: "Leather Jacket", description: "This leather jacket makes you the coolest at the party.",
image: "LeatherJacket.jpg", popularity: 0, collection: "Kids", color1: "Leather", color2: nil, color3: nil, small: 0, medium: 0, large: 1, keyword: "Casual", purchase_count: 0, sl_count: 0)

k3 = Item.create(price: 14.50, name: "Beanie", description: "Playful beanie for winter days.",
image: "PinkBeanie.jpg", popularity: 0, collection: "Kids", color1: "Pink", color2: "Grey", color3: "Yellow", small: 1, medium: 1, large: 1, keyword: "Winter", purchase_count: 0, sl_count: 0)

k4 = Item.create(price: 60.50, name: "Blazer", description: "Stylish balzer for a casual and formal look.",
image: "RedBlazer.jpg", popularity: 0, collection: "Kids", color1: "Red", color2: "Blue", color3: "Black", small: 1, medium: 1, large: 1, keyword: "Stylish", purchase_count: 0, sl_count: 0)

k5 = Item.create(price: 13.00, name: "T-Shirt", description: "A plain t-shirt goes well with anything.",
image: "WhiteTShirt.jpg", popularity: 0, collection: "Kids", color1: "White", color2: "Blue", color3: "Black", small: 1, medium: 1, large: 1, keyword: "Casual", purchase_count: 0, sl_count: 0)

k6 = Item.create(price: 27.50, name: "Wool Sweater", description: "A cosy knitted wool sweater.",
image: "YellowWoolSweater.jpg", popularity: 0, collection: "Kids", color1: "Yellow", color2: "Red", color3: "Green", small: 1, medium: 1, large: 0, keyword: "Winter", purchase_count: 0, sl_count: 0)

