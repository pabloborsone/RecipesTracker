//
//  HeaderView.swift
//  RecipesTracker
//
//  Created by Pablo Borsone on 19/02/24.
//

import SwiftUI

struct HeaderView: View {
    let model: Header

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(model.title)
                    .font(.largeTitle)
                    .fontDesign(.rounded)
                    .bold()
                if let subtitle = model.subtitle {
                    Text(subtitle)
                        .font(.callout)
                        .fontDesign(.rounded)
                        .multilineTextAlignment(.leading)
                }
            }
            Spacer()
            Button(model.buttonTitle, action: {})
                .buttonStyle(.borderedProminent)
                .tint(.black)
                .controlSize(.extraLarge)
        }
    }
}

#Preview {
    HeaderView(model: .headerSample)
}
