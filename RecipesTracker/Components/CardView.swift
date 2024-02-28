//
//  CardView.swift
//  RecipesTracker
//
//  Created by Pablo Borsone on 15/02/24.
//

import SwiftUI

struct CardView<NavigationLabel: View>: View {
    let model: Card
    @ViewBuilder let navigationLabel: NavigationLabel

    var body: some View {
        NavigationStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(model.title)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .bold()
                    Text(model.subtitle)
                        .font(.title)
                        .foregroundStyle(.white)
                        .bold()
                    Spacer()
                        .frame(height: 50)
                    NavigationLink("View", destination: navigationLabel)
                        .buttonStyle(.borderedProminent)
                        .controlSize(.extraLarge)
                        .foregroundStyle(.black)
                        .tint(.white)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 200)
            .background {
                Image(model.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxHeight: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .clipped()
        }
        }
    }
}

#Preview {
    CardView(model: .init(title: "Strawberry Pie",
                          subtitle: "ストロベリーパイ",
                          imageName: "card-image"), 
             navigationLabel: {
        DetailsView()
    })
}
