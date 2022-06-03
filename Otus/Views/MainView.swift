//
//  MainView.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 03/06/2022.
//

import SwiftUI

struct MainView: View {
    @Binding var activeTabSelection: Int
    @Binding var isActivveLink: Bool
    @State var text = NSMutableAttributedString(string: "")
    var body: some View {
        VStack {
            Text("Main view")
            MyUIKit(text: $text)
                .frame(maxWidth: 300, maxHeight: 200)
                .padding()
            myButton()
        }
        .padding(.bottom)
    }
}

private extension MainView {
    func myButton() -> some View {
        return Button(action: {
            isActivveLink = true
            activeTabSelection = 1
        }) {
            Text("Go to the Third View across  MyListView")
        }
        .buttonStyle(.bordered)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(activeTabSelection: .constant(0), isActivveLink: .constant(false))
    }
}
