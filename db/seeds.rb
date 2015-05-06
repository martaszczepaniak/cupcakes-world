Cupcake.destroy_all
Flavour.destroy_all

cherry_flavour = Flavour.create({ name: 'cherry' })
green_tea_flavour = Flavour.create({ name: 'green tea' })
mint_flavour = Flavour.create({ name: 'mint' })
raspberry_flavour = Flavour.create({ name: 'raspberry' })
strawberry_flavour = Flavour.create({ name: 'strawberry' })
coconut_flavour = Flavour.create({ name: 'coconut' })
hazelnut_flavour = Flavour.create({ name: 'hazelnut' })
vanilla_flavour = Flavour.create({ name: 'vanilla' })
chocolate_flavour = Flavour.create({ name: 'chocolate' })
white_chocolate_flavour = Flavour.create({ name: 'white chocolate' })
toffee_flavour = Flavour.create({ name: 'toffee' })
peanut_butter_flavour = Flavour.create({ name: 'peanut butter' })


Cupcake.create([{ name: 'Cherry', price: 5, flavours: [cherry_flavour] },
                { name: 'Green', price: 10, flavours: [green_tea_flavour, raspberry_flavour] },
                { name: 'Small', price: 3, flavours: [vanilla_flavour, chocolate_flavour, cherry_flavour] },
                { name: 'Heart', price: 9, flavours: [chocolate_flavour, strawberry_flavour,] },
                { name: 'Cream', price: 5, flavours: [vanilla_flavour, coconut_flavour] },
                { name: 'Mint', price: 7, flavours: [mint_flavour, chocolate_flavour] },
                { name: 'White', price: 5, flavours: [white_chocolate_flavour, toffee_flavour] },
                { name: 'Pink', price: 6, flavours: [raspberry_flavour, vanilla_flavour] },
                { name: 'WhipedCream', price: 9, flavours: [hazelnut_flavour, chocolate_flavour, mint_flavour] }])