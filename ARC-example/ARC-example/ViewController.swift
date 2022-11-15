//
//  ViewController.swift
//  ARC-example
//
//  Created by henrique augusto on 15/11/22.
//

import UIKit

class ViewController: UIViewController {
    private lazy var button2: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        button.setTitle("view controller 2", for: .normal)
        button.backgroundColor = .cyan
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(goToViewController2), for: .touchUpInside)
        return button
    }()
    
    private lazy var button3: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        button.setTitle("view controller 3", for: .normal)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(goToViewController3), for: .touchUpInside)
        return button
    }()
    
    private lazy var viewController2 = ViewController2(viewController1: self)
    private lazy var viewController3 = ViewController3(viewController1: self)

    override func viewDidLoad() {
        super.viewDidLoad()

        [button2, button3].forEach(view.addSubview)
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button2.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 12),
            button3.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

    }
}

@objc private extension ViewController {
    func goToViewController2() {
        self.present(viewController2, animated: true)
    }
    
    func goToViewController3() {
        self.present(viewController3, animated: true)
    }
}
