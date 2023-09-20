//
//  ViewController.swift
//  iOS-11 HW-11
//
//  Created by Христина Буянова on 20.09.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
//    private lazy var imageView: UIImageView = {
//        let image = UIImage(named: "fon")
//        let imageView = UIImageView(image: image)
//        imageView.clipsToBounds = true
//        imageView.backgroundColor = .systemGray
//
//        return imageView
//    }()



    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .blue
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.blue.cgColor, UIColor.white.cgColor]
        view.layer.addSublayer(gradient)
    }

    // MARK: - Setup

    private func setupHierrarchy () {

    }

    private func setupLayout () {

    }


    // MARK: - Actions


}

