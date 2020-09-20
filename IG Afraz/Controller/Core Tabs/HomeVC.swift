//
//  ViewController.swift
//  IG Afraz
//
//  Created by Matiny L on 9/3/20.
//  Copyright © 2020 Matiny L. All rights reserved.
//

import UIKit
import FirebaseAuth

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
        
    }
    
    private func handleNotAuthenticated() {
        // Check auth status
        if Auth.auth().currentUser == nil {
            // Show log in
            let loginVC = LoginVC()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }

}

