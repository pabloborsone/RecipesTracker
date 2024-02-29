//
//  HeaderViewModel.swift
//  RecipesTracker
//
//  Created by Pablo Borsone on 20/02/24.
//

import Combine

final class HeaderViewModel: ObservableObject {
    @Published var title = ""
    var subscriptions = Set<AnyCancellable>()

    init(title: String = "", subscriptions: Set<AnyCancellable> = Set<AnyCancellable>()) {
        self.title = title
        self.subscriptions = subscriptions
        loadTitle()
    }

    private func loadTitle() {
        $title
            .sink { text in
                print(text)
            }
            .store(in: &subscriptions)
    }
}
