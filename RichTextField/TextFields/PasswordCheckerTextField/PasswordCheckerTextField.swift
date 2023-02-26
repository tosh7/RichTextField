//
//  PasswordCheckerTextField.swift
//  RichTextField
//
//  Created by Satoshi Komatsu on 2023/02/25.
//

import UIKit

public class PasswordCheckerTextField: UIView {

    /// Hight for one line
    /// In this class, total height will be lineHight in empty state
    /// double lineHeight for other cases
    public var lineHeight: CGFloat = 30
    public weak var delegate: PasswordCheckerTextFieldDelegate?
    /// background color for whole area
    public override var backgroundColor: UIColor? {
        didSet {
            textField.backgroundColor = backgroundColor
            checkerLabel.backgroundColor = backgroundColor
        }
    }
    /// background color for textField
    /// Use this only for changing textField' color
    /// Default Color is UIColor.white
    public var textFieldBackgroundColor: UIColor = .white {
        didSet {
            textField.backgroundColor = textFieldBackgroundColor
        }
    }
    /// background color for CheckerTextField
    /// Use this only for changing textField' color
    /// Default Color is UIColor.white
    public var checkerLabelBackgroundColor: UIColor = .white {
        didSet {
            checkerLabel.backgroundColor = checkerLabelBackgroundColor
        }
    }

    public init() {
        super.init(frame: .zero)
        setupViews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }

    // MARK - View components

    /// actual TextFiled
    /// always masked it's inside field value
    /// not allowed to access from outside of library
    /// if any change needed, access via functions
    private lazy var textField: UITextField = {
        let view = UITextField()
        view.isSecureTextEntry = true
        view.delegate = self.delegate
        view.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        view.clipsToBounds = true
        return view
    }()

    /// Label that shows
    /// Onece any value is entered in the textField, this appears and shows it's inside value
    public let checkerLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()

    private func setupViews() {
        clipsToBounds = true
        backgroundColor = .white

        addSubview(textField)
        addSubview(checkerLabel)

        textField.translatesAutoresizingMaskIntoConstraints = false
        checkerLabel.translatesAutoresizingMaskIntoConstraints = false

        textField.topAnchor.constraint(equalTo: topAnchor, constant: 4).isActive = true
        textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        textField.heightAnchor.constraint(equalToConstant: lineHeight).isActive = true
        checkerLabel.topAnchor.constraint(equalTo: textField.bottomAnchor).isActive = true
        checkerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        checkerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        checkerLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        checkerLabel.heightAnchor.constraint(equalToConstant: lineHeight).isActive = true
    }

    @objc private func textFieldDidChange(_ sender: UITextField) {
        checkerLabel.text = sender.text
    }
}

// MARK: UITextFieldDelegate
extension PasswordCheckerTextField: UITextFieldDelegate {}
