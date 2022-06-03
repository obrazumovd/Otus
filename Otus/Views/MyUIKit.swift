//
//  MyUIKit.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 03/06/2022.
//

import Foundation
import SwiftUI


struct MyUIKit: UIViewRepresentable {
    @Binding var text: NSMutableAttributedString

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.backgroundColor = .secondarySystemBackground
        textView.layer.cornerRadius = 10
        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = text
    }
}
