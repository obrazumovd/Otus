//
//  MyModalView.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 03/06/2022.
//

import SwiftUI

struct MyModalView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            dismissButton()
            Spacer()
            Text("My modal view")
            Spacer()
        }
    }
}

private extension MyModalView {
    func dismissButton() -> some View {
        return HStack(alignment: .top) {
            Button(action: { presentationMode.wrappedValue.dismiss() }) {
                Label("Back", systemImage: "chevron.left")
            }
            Spacer()
        }
        .padding()
    }
}
struct MyModalView_Previews: PreviewProvider {
    static var previews: some View {
        MyModalView()
    }
}
