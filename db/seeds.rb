# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DrinkIngredient.destroy_all
Drink.destroy_all
Ingredient.destroy_all
Order.destroy_all
User.destroy_all

    # User.create(name: "dave")

    # Order.create(name: "boba", user_id: User.first.id)

    # Drink.create(name: Faker::Food.fruits, user_id:User.first.id, order_id:Order.first.id, sugar_amt:2, ice_amt:2, boba:true, jelly:true, smallsize:true, largesize:true)

    
10.times do 
    User.create(name: Faker::Games::Overwatch.hero)
end

10.times do 
    Order.create(name: Faker::Games::Pokemon.name, user_id:User.all.sample.id)
end

20.times do
    Drink.create(name: Faker::Food.fruits, user_id:User.all.sample.id, order_id:Order.all.sample.id, sugar_amt:2, ice_amt:2, boba:true, jelly:true, smallsize:true, largesize:true)
end

30.times do
    Ingredient.create(name: Faker::Food.ingredient)
end

30.times do
    DrinkIngredient.create(drink_id: Drink.all.sample.id, ingredient_id: Ingredient.all.sample.id)
end

# t.integer "user_id", null: false
#     t.integer "order_id", null: false
#     t.string "name"
#     t.integer "sugar_amt"
#     t.integer "ice_amt"
#     t.boolean "boba", default: false
#     t.boolean "jelly", default: false
#     t.boolean "smallsize", default: false
#     t.boolean "largesize", default: false