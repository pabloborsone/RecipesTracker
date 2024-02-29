//
//  Header.swift
//  RecipesTracker
//
//  Created by Pablo Borsone on 19/02/24.
//

import Foundation

struct Header {
    let title: String
    let subtitle: String?
    let buttonTitle: String
}

extension Header {
    static var headerSample: Self { .init(title: "Featured", subtitle: "We have prepared the best food for you", buttonTitle: "View all") }
}
