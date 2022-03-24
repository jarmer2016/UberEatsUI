//
//  FoodItem.swift
//  SwiftUIUberEatsMenu
//
//  Created by James Armer on 15/02/2022.
//

import Foundation

struct FoodItem: Identifiable {
    var id = UUID().uuidString
    let title: String
    let description: String
    let price: String
    let imageName: String
}
var japaneseFood: [FoodItem] = [
    .init(title: "Sushi", description: "Amazing sushi imported directly from Japan. Spicy tuna topped with acovado and mango", price: "£22", imageName: "japanese-sushi"),
    .init(title: "Ramen Noodles", description: "You're not a student anymore, it's time to upgrade your noodle game.", price: "£14", imageName: "japanese-noodle"),
    .init(title: "Poke Bowl", description: "Want your sushi in a bowl? Check this out", price: "£24", imageName: "japanese-poke-bowl")
]

var americanFood: [FoodItem] = [
    .init(title: "Cheese Burger", description: "Grass-fed Beef topped with cheese. What's not to love?", price: "£15", imageName: "american-cheeseburger"),
    .init(title: "Hot Dog", description: "Woof. This might be the best dog you ever come across in your life.", price: "£12", imageName: "american-hotdog"),
    .init(title: "All-Day Breakfast", description: "American breakfast at anytime you'd like", price: "£25", imageName: "american-breakfast")
]

var italianFood: [FoodItem] = [
    .init(title: "Penne", description: "Freshly made penne in beautifully fresh tomato sauce", price: "£16", imageName: "italian-penne"),
    .init(title: "Pizza", description: "You're not a student anymore, it's time to upgrade your pizza game.", price: "£19", imageName: "italian-pizza"),
    .init(title: "Lasagne", description: "Just like Mama makes it", price: "£21", imageName: "italian-lasagne")
]
