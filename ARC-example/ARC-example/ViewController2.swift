//
//  ViewController2.swift
//  ARC-example
//
//  Created by henrique augusto on 15/11/22.
//

import Foundation

import UIKit

class ViewController2: UIViewController {
    
    private lazy var buttonBack: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        button.setTitle("voltar", for: .normal)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(backButton), for: .touchUpInside)
        return button
    }()
    
    private var viewController1: ViewController?
    
    init(viewController1: ViewController) {
        super.init(nibName: nil, bundle: nil)
        self.viewController1 = viewController1
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) { nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(buttonBack)
        view.backgroundColor = .cyan
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            buttonBack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonBack.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func backButton() {
        self.dismiss(animated: true)
    }
}
