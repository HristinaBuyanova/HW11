//
//  ViewController.swift
//  iOS-11 HW-11
//
//  Created by Христина Буянова on 20.09.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets

    private lazy var labelLogin: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 32, weight: .heavy)
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 20
        textField.textColor = .darkGray
        textField.textAlignment = .left
        textField.placeholder = "keanureeves01"
        textField.backgroundColor = .white
        textField.returnKeyType = .next
        textField.keyboardType = .default
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setLeftIcon(UIImage(systemName: "person")!)
        textField.setRightIcon(UIImage(systemName: "checkmark.circle.fill")!)
        return textField
    }()

    private lazy var passwordTextFiel: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 20
        textField.textColor = .darkGray
        textField.textAlignment = .left
        textField.placeholder = "Password"
        textField.backgroundColor = .white
        textField.returnKeyType = .next
        textField.keyboardType = .default
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.setLeftIcon(UIImage(systemName: "lock")!)
        return textField
    }()

    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.clipsToBounds = true
        button.layer.cornerRadius = 20
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 20
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var labelTextAfterButton: UILabel = {
        let label = UILabel()
        label.text = "Forget your password?"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var labelTextDontHaveAccount: UILabel = {
        let label = UILabel()
        label.text = "Dont have account? Sing up"
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var labelTextOrConnectWith: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textAlignment = .center
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var stripeFirst: UIView = {
        let stripe = UIView()
        stripe.backgroundColor = .systemGray4
        stripe.layer.cornerRadius = 20
        stripe.translatesAutoresizingMaskIntoConstraints = false
        return stripe
    }()

    private lazy var stripeSecond: UIView = {
        let stripe = UIView()
        stripe.backgroundColor = .systemGray4
        stripe.layer.cornerRadius = 20
        stripe.translatesAutoresizingMaskIntoConstraints = false
        return stripe
    }()



//    private lazy var stackTextField: UIStackView = {
//        let stack = UIStackView()
//        stack.axis = .vertical
//        stack.alignment = .center
//        stack.distribution = .fillProportionally
//        stack.spacing = 5
//        stack.translatesAutoresizingMaskIntoConstraints = false
//
//        return stack
//    }()



    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierrarchy()
        setupLayout()
    }

    // MARK: - Setup

    private func setupView() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.systemBlue.cgColor, UIColor.systemBlue.cgColor, UIColor.systemPurple.cgColor, UIColor.white.cgColor, UIColor.white.cgColor]
        view.layer.addSublayer(gradient)
    }

    private func setupHierrarchy () {
        view.addSubview(labelLogin)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextFiel)
        view.addSubview(loginButton)
        view.addSubview(labelTextAfterButton)
        view.addSubview(labelTextDontHaveAccount)
        view.addSubview(labelTextOrConnectWith)
        view.addSubview(stripeFirst)
        view.addSubview(stripeSecond)
    }

    private func setupLayout () {
        NSLayoutConstraint.activate([
            labelLogin.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            labelLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            loginTextField.topAnchor.constraint(equalTo: labelLogin.bottomAnchor, constant: 40),
            loginTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginTextField.heightAnchor.constraint(equalToConstant: 44),

            passwordTextFiel.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 10),
            passwordTextFiel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextFiel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordTextFiel.heightAnchor.constraint(equalToConstant: 44),

            loginButton.topAnchor.constraint(equalTo: passwordTextFiel.bottomAnchor, constant: 40),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 44),

            labelTextAfterButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            labelTextAfterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            labelTextDontHaveAccount.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            labelTextDontHaveAccount.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            labelTextOrConnectWith.bottomAnchor.constraint(equalTo: labelTextDontHaveAccount.topAnchor, constant: -94),
            labelTextOrConnectWith.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            stripeFirst.bottomAnchor.constraint(equalTo: labelTextDontHaveAccount.topAnchor, constant: -100),
            stripeFirst.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            stripeFirst.trailingAnchor.constraint(equalTo: labelTextOrConnectWith.leadingAnchor, constant: -10),
            stripeFirst.heightAnchor.constraint(equalToConstant: 1),

            stripeSecond.bottomAnchor.constraint(equalTo: labelTextDontHaveAccount.topAnchor, constant: -100),
            stripeSecond.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            stripeSecond.leadingAnchor.constraint(equalTo: labelTextOrConnectWith.trailingAnchor, constant: 10),
            stripeSecond.heightAnchor.constraint(equalToConstant: 1)
        ])
    }




    // MARK: - Actions


}

    // MARK: - Extension

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 20, y: 5, width: 20, height: 20))
        iconView.image = image
        iconView.tintColor = .systemGray
        let iconContainerView: UIView = UIView(frame: CGRect(x: 30, y: 0, width: 50, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}

extension UITextField {
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: -10, y: 5, width: 20, height: 20))
        iconView.image = image
        iconView.tintColor = .systemMint
        let iconContainerView: UIView = UIView(frame: CGRect(x: -20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}

