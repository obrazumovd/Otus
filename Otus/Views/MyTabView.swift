//
//  MyTabView.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 03/06/2022.
//

import SwiftUI

struct MyTabView: View {
    @State private var selection: Int = 0
    @State private var isActiveLink: Bool = false
    var body: some View {
        TabView(selection: $selection) {
            MainView(activeTabSelection: $selection, isActivveLink: $isActiveLink)
                .tag(0)
                .tabItem {
                    Label("Main", systemImage: "person")
            }
            MyListView(isActiveLink: $isActiveLink)
                .tag(1)
                .tabItem {
                    Label("List", systemImage: "list.dash")
                }
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MyTabView()
                .previewInterfaceOrientation(.landscapeLeft)
            MyTabView().previewDevice("iPad (9th generation)").previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
