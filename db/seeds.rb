puts "🌱 Seeding spices..."
# sundae creation
Sundae.create(name: "Nutty caramel & choc sundaes", 
image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-994516_11-7d9c5b0.jpg?quality=90&webp=true&resize=440,400",
cost: rand(5..10),
calories: rand(300..500),
likes: rand(1..10),
ingredients: "vanilla ice cream, chocolate ice cream, dark chocolate, caramel, crunchy peanut butter, crunchy biscuits, salted roasted peanut"
)
Sundae.create(name: "Boozy pineapple & coconut sundae", 
image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/pineapple-ab6ffb2.jpg?quality=90&webp=true&resize=440,400",
cost: rand(5..10),
calories: rand(300..500),
likes: rand(1..10),
ingredients: "coconut ice cream, fresh pineapple, coconut liqueur, golden caster sugar, ginger nut biscuits, dried pineapple rings"
)
Sundae.create(name: "Fruity summer sundaes", 
image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1081492_11-5ff297c.jpg?quality=90&webp=true&resize=440,400",
cost: rand(5..10),
calories: rand(300..500),
likes: rand(1..10),
ingredients: "vanilla ice cream, pot double cream, icing sugar, strawberries, nectarines, berry sorbet"
)
Sundae.create(name: "Blueberry sundae with candied bacon", 
image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/bacon-ice-cream-sunday-0d7973b.png?quality=90&webp=true&resize=600,545",
cost: rand(5..10),
calories: rand(300..500),
likes: rand(1..10),
ingredients: "vanilla ice cream, peanut butter cookies, salted peanuts, smoked streaky bacon, maple syrup, blueberries, golden caster sugar, lemon juice"
)
Sundae.create(name: "Strawberry, melon & ginger sundaes", 
image_url: "https://hips.hearstapps.com/del.h-cdn.co/assets/15/30/1437492710-shot-2-17.jpg?crop=0.448xw:1.00xh;0.263xw,0&resize=980:*",
cost: rand(5..10),
calories: rand(300..500),
likes: rand(1..10),
ingredients: "Greek yogurt, cantaloupe melon, strawberry, ginger biscuits, stem ginger, light muscovado sugar"
)
# sundae_reviews creation
SundaeReview.create(name: "John",
comment: "Great sundae.",
likes: rand(1..5),
sundae_id: rand(1..5)
)
SundaeReview.create(name: "Blake",
comment: "To rich for my taste.",
likes: rand(1..5),
sundae_id: rand(1..5)
)
SundaeReview.create(name: "Ashley",
comment: "I wish I could eat it for every meal.",
likes: rand(1..5),
sundae_id: rand(1..5)
)
SundaeReview.create(name: "Beth",
comment: "It was good but not amazing.",
likes: rand(1..5),
sundae_id: rand(1..5)
)
SundaeReview.create(name: "Karen",
comment: "Worst ever. I'm never going back!",
likes: rand(1..5),
sundae_id: rand(1..5)
)
# shake creations
Shake.create(name: "Vanilla", 
image_url: "https://www.oatmealwithafork.com/wp-content/uploads/2019/04/Milk11.jpg",
cost: rand(5..10),
calories: rand(300..500),
likes: rand(1..10),
ingredients: "vanilla ice cream, whole milk, vanilla extract"
)
Shake.create(name: "Chocolate", 
image_url: "data:image/jpeg;base64,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",
cost: rand(5..10),
calories: rand(300..500),
likes: rand(1..10),
ingredients: "vanilla ice cream, chocolate-flavored syrup, milk"
)
Shake.create(name: "Strawberry", 
image_url: "https://stephaniesain.com/wp-content/uploads/2020/05/Strawberry-Milkshake1.jpg",
cost: rand(5..10),
calories: rand(300..500),
likes: rand(1..10),
ingredients: "vanilla ice cream, milk, strawberry, sugar, vanilla extract"
)
Shake.create(name: "Peanut Butter", 
image_url: "https://food.fnr.sndimg.com/content/dam/images/food/fullset/2019/6/10/KC2106_Peanut-Butter-Banana-Milkshake_s4x3.jpg.rend.hgtvcom.616.462.suffix/1560187532444.jpeg",
cost: rand(5..10),
calories: rand(300..500),
likes: rand(1..10),
ingredients: "vanilla ice cream, whole milk, creamy peanut butter, whipped cream, peanuts"
)
Shake.create(name: "Mango", 
image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdtXqX3LfMQKQ7JlwJA2DIDi9H879sjSHkpg&usqp=CAU",
cost: rand(5..10),
calories: rand(300..500),
likes: rand(1..10),
ingredients: "vanilla ice cream, whole milk, mangos"
)
# shake_reviews creation
ShakeReview.create(name: "Adam",
comment: "Best Shake Ever!",
likes: rand(1..5),
shake_id: rand(1..5)
)
ShakeReview.create(name: "Tom",
comment: "Very basic.",
likes: rand(1..5),
shake_id: rand(1..5)
)
ShakeReview.create(name: "Rick",
comment: "This is what heaven taste like.",
likes: rand(1..5),
shake_id: rand(1..5)
)
ShakeReview.create(name: "Mary",
comment: "Best money I have spent.",
likes: rand(1..5),
shake_id: rand(1..5)
)
ShakeReview.create(name: "Barbara",
comment: "I wish I never heard of this place!",
likes: rand(1..5),
shake_id: rand(1..5)
)


puts "✅ Done seeding!"
