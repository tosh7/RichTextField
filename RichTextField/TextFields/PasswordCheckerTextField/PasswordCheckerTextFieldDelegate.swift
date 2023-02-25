//
//  PasswordCheckerTextFieldDelegate.swift
//  RichTextField
//
//  Created by Satoshi Komatsu on 2023/02/25.
//

import UIKit

public protocol PasswordCheckerTextFieldDelegate: UITextFieldDelegate {
    func textFieldDidChange(_ textField: PasswordCheckerTextField)
}

public extension PasswordCheckerTextFieldDelegate {
    func textFieldDidChange(_ textField: PasswordCheckerTextField) {}
}
