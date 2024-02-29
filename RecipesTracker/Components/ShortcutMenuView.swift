//
//  ShortcutMenuView.swift
//  RecipesTracker
//
//  Created by Pablo Borsone on 19/02/24.
//

import SwiftUI

struct ShortcutMenuView: View {
    let buttons: [ShortcutButton]

    @State var backgroundColor = Color.clear

    var body: some View {
        VStack(alignment: .leading) {
            Text("List of Foods")
                .font(.title)
                .fontDesign(.rounded)
                .bold()
            HStack {
                ForEach(buttons) { button in
                    VStack(alignment: .center) {
                        Image(button.iconName)
                            .resizable(capInsets: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                            .frame(width: 50, height: 50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .strokeBorder(style: StrokeStyle()))
                        Text(button.title)
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
        }
    }
}

#Preview {
    ShortcutMenuView(buttons: .foodCategorySample)
}
