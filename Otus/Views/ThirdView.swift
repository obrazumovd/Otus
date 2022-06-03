//
//  ThirdView.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 03/06/2022.
//

import SwiftUI

struct ThirdView: View {
    @State private var isShowModal: Bool = false
    var body: some View {
        VStack {
            Text("Third view")
            modalButton()
        }
        .sheet(isPresented: $isShowModal) {
            MyModalView()
        }
    }
}

private extension ThirdView {
    func modalButton() -> some View {
        return Button(action: { isShowModal.toggle() }) {
            Text("Show modal view")
        }
        .buttonStyle(.bordered)
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
