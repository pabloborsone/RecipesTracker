//
//  ShortcutButton.swift
//  RecipesTracker
//
//  Created by Pablo Borsone on 19/02/24.
//

import Foundation

struct ShortcutButton: Identifiable {
    let id = UUID()
    
    let iconName: String
    let title: String
}

extension Array where Element == ShortcutButton {
    static var foodCategorySample: Self { [.init(iconName: "hamburger-icon", title: "Burgers"),
                                           .init(iconName: "milkshake-icon", title: "Sweets"),
                                           .init(iconName: "pizza-icon", title: "Pizzas"),
                                           .init(iconName: "beer-icon", title: "Drinks")] }
}
