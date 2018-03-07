//
//  ViewController.swift
//  iOSTalk
//
//  Created by Alejandro López Rocha on 06/03/2018.
//  Copyright © 2018 Alejandro López Rocha. All rights reserved.
//

import UIKit
import UserNotifications
import Firebase

class ViewController: UIViewController {
    
    var testView = TestView()
    
    override func loadView() {
        self.view = testView
        
    }
    
    
    init(){
        super.init(nibName: nil, bundle: nil)
        
    }
    
    override func viewDidLoad() {
       self.view = testView
    
        testView.button.addTarget(self, action: #selector(sendEventToFirebase), for: .touchUpInside)
        testView.button2.addTarget(self, action: #selector(setupNotifications), for: .touchUpInside)

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func sendEventToFirebase() {
        if testView.animation.isAnimationPlaying {
            testView.animation.stop()
        } else {
            testView.animation.play()
        }
        
        Analytics.logEvent(random(), parameters: nil)
        
    }
    @objc func setupNotifications() {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.setupNotifications()
        }
    }
    
    func random() -> String {
        let base = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        var randomString: String = ""
        
        for _ in 0...3 {
            let randomValue = arc4random_uniform(UInt32(base.count))
            randomString += "\(base[base.index(base.startIndex, offsetBy: Int(randomValue))])"
        }
        return randomString
    }
    

}

