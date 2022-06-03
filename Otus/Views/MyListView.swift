//
//  MyListView.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 03/06/2022.
//

import SwiftUI

struct MyListView: View {
    @Binding var isActiveLink: Bool
    var body: some View {
        NavigationView {
            listView()
                .navigationTitle(Text("My list view"))
        }
        .navigationViewStyle(.stack)
       
    }
}

private extension MyListView {
    func listView() -> some View {
        return List {
            NavigationLink(destination: ThirdView()) {
                Text("Go to third View")
            }
            NavigationLink("Go to third View auto", isActive: $isActiveLink) {
                ThirdView()
            }
        }.toAnyView()
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView(isActiveLink: .constant(false))
    }
}
