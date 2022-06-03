//
//  Extensions.swift
//  Otus
//
//  Created by Dmitriy Obrazumov on 03/06/2022.
//

import Foundation
import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
