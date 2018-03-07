//
//  TestView.swift
//  iOSTalk
//
//  Created by Alejandro López Rocha on 06/03/2018.
//  Copyright © 2018 Alejandro López Rocha. All rights reserved.
//

import UIKit
import Lottie

class TestView: UIView {
    
    private struct ViewTraits {
        static let tableViewSeparatorInset: CGFloat = 16
    }
    
    let button: UIButton
    let button2: UIButton
    let text: UILabel
    let animation: LOTAnimationView
    
    
    override init(frame: CGRect) {
        
        button = UIButton()
        button2 = UIButton()
        text = UILabel()
        animation = LOTAnimationView(name: "newAnimation")
        
        super.init(frame: frame)
        
        setupComponents()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupComponents() {
        
      

        button.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        text.translatesAutoresizingMaskIntoConstraints = false
        animation.translatesAutoresizingMaskIntoConstraints = false
        
        backgroundColor = .white
        text.text = "Press the button to see the Lottie magic"
        text.textColor = UIColor.black
//        text.font = Font
        button.backgroundColor = UIColor.lightGray
        button.setTitle("Send Event", for: UIControlState.normal)
        button.tintColor = UIColor.black
        
        button2.backgroundColor = UIColor.black
        button2.setTitle("Turn On notifications", for: UIControlState.normal)
        button2.tintColor = UIColor.blue
        button2.layer.borderColor = UIColor.blue.cgColor
        button2.titleEdgeInsets.top = 5.0
        button2.titleEdgeInsets.right = 5.0
        button2.titleEdgeInsets.bottom = 5.0
        button2.titleEdgeInsets.left = 5.0
        button2.layer.cornerRadius = 5.0
        
     
        animation.isHidden = false


        button.titleEdgeInsets.top = 5.0
        button.titleEdgeInsets.bottom = 5.0
        button.titleEdgeInsets.left = 5.0
        button.titleEdgeInsets.right = 5.0
        button.layer.cornerRadius = 5.0

        addSubview(button)
        addSubview(text)
        addSubview(animation)
        addSubview(button2)
        
    }
    
    fileprivate func setupConstraints() {
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50),
            button2.centerXAnchor.constraint(equalTo: centerXAnchor),
            button2.bottomAnchor.constraint(equalTo: text.topAnchor, constant: -10),
            button2.widthAnchor.constraint(equalToConstant: 200),
            button2.heightAnchor.constraint(equalToConstant: 50),
            text.centerXAnchor.constraint(equalTo: centerXAnchor),
            text.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -10),
            animation.centerXAnchor.constraint(equalTo: centerXAnchor),
            animation.bottomAnchor.constraint(equalTo: bottomAnchor),
            
          
            ])
    }
    
}


