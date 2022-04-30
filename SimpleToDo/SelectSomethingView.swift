//
//  SelectSomethingView.swift
//  SimpleToDo
//
//  Created by Philipp on 30.04.22.
//

import SwiftUI

struct SelectSomethingView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "checkmark.square")
                .font(.largeTitle)
                .foregroundColor(.accentColor)

            Text("Welcome to SimpleToDo!")
                .font(.title)

            Text("Please select an item to view.")
        }
    }
}

struct SelectSomethingView_Previews: PreviewProvider {
    static var previews: some View {
        SelectSomethingView()
    }
}
