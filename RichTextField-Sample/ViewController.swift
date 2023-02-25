//
//  ViewController.swift
//  RichTextField-Sample
//
//  Created by Satoshi Komatsu on 2023/02/25.
//

import UIKit
import RichTextField

class ViewController: UIViewController {

    let textView: PasswordCheckerTextField = .init()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        textView.delegate = self

        view.addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false

        textView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
}

extension ViewController: PasswordCheckerTextFieldDelegate {
}

