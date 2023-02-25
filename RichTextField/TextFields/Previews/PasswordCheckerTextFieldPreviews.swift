//
//  PasswordCheckerTextFieldPreviews.swift
//  RichTextField
//
//  Created by Satoshi Komatsu on 2023/02/25.
//

import UIKit
import SwiftUI

struct PasswordCheckerTextFieldPreview: UIViewRepresentable {
    typealias UIViewType = PasswordCheckerTextField
    let view: PasswordCheckerTextField

    init() {
        self.view = PasswordCheckerTextField()
    }

    func makeUIView(context: UIViewRepresentableContext<PasswordCheckerTextFieldPreview>) -> PasswordCheckerTextField {
        return view
    }

    func updateUIView(_ uiView: PasswordCheckerTextField, context: Context) { }
}

struct PasswordCheckerTextFieldPreviews: PreviewProvider {

    typealias Previews = PasswordCheckerTextFieldPreview

    static var previews: PasswordCheckerTextFieldPreview {
        Previews()
    }
}
