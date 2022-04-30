//
//  ItemRow.swift
//  SimpleToDo
//
//  Created by Philipp on 30.04.22.
//

import SwiftUI

struct ItemRow: View {
    @Binding var item: ToDoItem

    var body: some View {
        NavigationLink {
            DetailView(item: $item)
        } label: {
            Label(item.title, systemImage: item.icon)
                .animation(nil, value: item)
        }
        .tag(item)

    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: .constant(.example))
    }
}
