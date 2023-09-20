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
        gradient.colors = [UIColor.blue.cgColor, UIColor.blue.cgColor, UIColor.purple.cgColor, UIColor.white.cgColor, UIColor.white.cgColor]
        view.layer.addSublayer(gradient)
    }

    private func setupHierrarchy () {
        view.addSubview(labelLogin)

    }

    private func setupLayout () {
        NSLayoutConstraint.activate([
            labelLogin.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            labelLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }


    // MARK: - Actions


}

