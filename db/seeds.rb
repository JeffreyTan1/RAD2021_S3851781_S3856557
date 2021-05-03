# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#


#Men's items

m1 = Item.create(price: 40.00, name: "Red Chino Pants", description: "Stylish chino pants made from Italian cloth.",
image: "RedChinoPants.jpg")

m2 = Item.create(price: 35.50, name: "Red Wool Sweater", description: "Wool sweater to keep you warm in the winter.",
image: "RedWoolSweater.jpg")

m3 = Item.create(price: 30.50, name: "Green Sweater", description: "Luxurious sweater made from Nepalese cashmere.",
image: "GreenSweater.jpg")

m4 = Item.create(price: 23.50, name: "Black Turtle Neck", description: "This turtle neck adds class to any outfit.",
image: "BlackTurtleNeck.jpg")

m5 = Item.create(price: 75.00, name: "Blue Suit Jacket", description: "Stylish suit jacket made from Italian silk.",
image: "BlueSuitJacket.jpg")

m6 = Item.create(price: 85.50, name: "Denim Jacket", description: "This denim jacket is perfect for casual events.",
image: "DenimJacket.jpg")

#Women's items

w1 = Item.create(price: 40.00, name: "Denim Overalls", description: "Denim overalls for a retro look.",
image: "DenimOveralls.jpg")

w2 = Item.create(price: 70.50, name: "Pink Blazer", description: "Stylish blazer to make your outfit pop.",
image: "PinkBlazer.jpg")

w3 = Item.create(price: 28.50, name: "Red Blouse", description: "An eye-catching blouse for a sunny day.",
image: "RedBlouse.jpg")

w4 = Item.create(price: 25.50, name: "White Shirt", description: "A must for a summer professional's wardrobe.",
image: "WhiteShirt.jpg")

w5 = Item.create(price: 45.00, name: "Yellow Dress", description: "Spotted yellow sun-dress made from comfortable Italian cloth.",
image: "YellowDress.jpg")

w6 = Item.create(price: 17.50, name: "Red T-Shirt", description: "Comfortable and classic t-shirt.",
image: "RedTShirt.jpg")


#Kids's items

k1 = Item.create(price: 35.00, name: "Denim Jeans", description: "Denim jeans that you can take to any event.",
image: "DenimJeans.jpg")

k2 = Item.create(price: 65.50, name: "Leather Jacket", description: "This leather jacket makes you the coolest at the party.",
image: "LeatherJacket.jpg")

k3 = Item.create(price: 14.50, name: "Pink Beanie", description: "Playful pink beanie for winter days.",
image: "PinkBeanie.jpg")

k4 = Item.create(price: 60.50, name: "Red Blazer", description: "Stylish balzer for a casual and formal look.",
image: "RedBlazer.jpg")

k5 = Item.create(price: 13.00, name: "White T-Shirt", description: "A plain white t-shirt goes well with anything.",
image: "WhiteTShirt.jpg")

k6 = Item.create(price: 27.50, name: "Yellow Wool Sweater", description: "A cosy knitted wool sweater.",
image: "YellowWoolSweater.jpg")
