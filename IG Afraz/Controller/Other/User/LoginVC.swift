//
//  LoginVC.swift
//  IG Afraz
//
//  Created by Matiny L on 9/3/20.
//  Copyright © 2020 Matiny L. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    struct Constants {
        static let cornerRadius: CGFloat = 8.0
    }

    // MARK: Create UIViews
    
    private let usernameTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Username or Email..."
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    
    private let passwordField: UITextField = {
        let field = UITextField()
        field.placeholder = "Password..."
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.isSecureTextEntry = true
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.layer.masksToBounds = true
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private let headerView: UIView = {
        return UIView()
    }()
    
    private let termsButton: UIButton = {
        return UIButton()
    }()
    
    private let privacyButton: UIButton = {
        return UIButton()
    }()
    
    private let createAccountButton: UIButton = {
           return UIButton()
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        // MARK: Add subViews
        view.addSubViews(views: usernameTextField, passwordField, loginButton, headerView, termsButton, privacyButton, createAccountButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // MARK: Assign Frames
        headerView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: 200)
    }
    
    @objc private func didTapLoginButton() {
        
    }
    
    @objc private func didTapTermsButton() {
            
    }
    
    @objc private func didTapPrivacyButton() {
        
    }
    
    @objc private func didTapCreateAccountButton() {
        
    }
}

// MARK: Variadic Parameter
extension UIView {
    func addSubViews(views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
