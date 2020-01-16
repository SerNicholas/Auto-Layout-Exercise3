//
//  ViewController.swift
//  baciti
//
//  Created by Nikola on 8/24/19.
//  Copyright © 2019 Nikola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let redView: UIView = {
        let red = UIView()
        red.backgroundColor = .red
        return red
    }()
    
    let orangeView: UIView = {
        let orange = UIView()
        orange.backgroundColor = .orange
        return orange
    }()
    
    let blueView: UIView = {
        let blue = UIView()
        blue.backgroundColor = .blue
        return blue
    }()
    
    let brownView: UIView = {
        let brown = UIView()
        brown.backgroundColor = .brown
        return brown
    }()
    
    let cyanView: UIView = {
        let cyan = UIView()
        cyan.backgroundColor = .cyan
        return cyan
    }()
    
    
    
    
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            
            redView.heightAnchor.constraint(equalToConstant: 150),
            redView.widthAnchor.constraint(equalTo: redView.heightAnchor),
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            redView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            
            orangeView.heightAnchor.constraint(equalTo: redView.heightAnchor),
            orangeView.widthAnchor.constraint(equalTo: orangeView.heightAnchor),
            orangeView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            orangeView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            
            blueView.heightAnchor.constraint(equalToConstant: 150),
            blueView.widthAnchor.constraint(equalTo: redView.heightAnchor),
            blueView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            blueView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            
            brownView.heightAnchor.constraint(equalTo: redView.heightAnchor),
            brownView.widthAnchor.constraint(equalTo: orangeView.heightAnchor),
            brownView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            brownView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            
            cyanView.heightAnchor.constraint(equalTo: redView.heightAnchor),
            cyanView.widthAnchor.constraint(equalTo: redView.heightAnchor),
            cyanView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cyanView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
         
            ])
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [redView, orangeView, blueView, brownView, cyanView].forEach { view.addSubview($0)}
        [redView, orangeView, blueView, brownView, cyanView].forEach { ($0).translatesAutoresizingMaskIntoConstraints = false }
        setupLayout()
    }
}

