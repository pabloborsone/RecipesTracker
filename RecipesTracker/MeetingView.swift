//
//  ContentView.swift
//  RecipesTracker
//
//  Created by Pablo Borsone on 10/02/24.
//

import SwiftUI

struct MeetingView: View {
    @ObservedObject var viewModel = HeaderViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                TextField("Hello", text: $viewModel.title)
                    .background(Color.green)
                HeaderView(model: .headerSample)
                    .navigationBarTitleDisplayMode(.automatic)
                    .navigationTitle("Recipes")
                    .toolbar {
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "slider.horizontal.3")
                    }
                CardView(model: .strawberrySample,
                         navigationLabel: { DetailsView() })
                    .padding(EdgeInsets(top: 24, leading: 0, bottom: 24, trailing: 0))
                ShortcutMenuView(buttons: .foodCategorySample)
            }
            .padding()
        }
    }
}

#Preview {
    MeetingView()
}
