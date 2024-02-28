//
//  Card.swift
//  RecipesTracker
//
//  Created by Pablo Borsone on 15/02/24.
//

import Foundation

struct Card {
    let title: String
    let subtitle: String
    let imageName: String
}

extension Card {
    static var strawberrySample: Self { .init(title: "Strawberry Pie", subtitle: "ストロベリーパイ", imageName: "card-image") }
}
