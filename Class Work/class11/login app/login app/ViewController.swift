//
//  ViewController.swift
//  login app
//
//  Created by Allison Sheren McMillan on 2/4/15.
//  Copyright (c) 2015 Allison McMillan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var titleLabel = UILabel(frame: CGRect(x: 30, y: 30, width: 500, height: 100) )
        titleLabel.text = "Woot! I'm an app"
        self.view.addSubview(titleLabel)
        
        var loginBox = UIView(frame: CGRect(x: 50, y: 50, width: self.view.frame.width, height: self.view.frame.height))
        self.view.addSubview(loginBox)
        
        //need to do the math to set the actual size
        var usernameLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 100, height: 20))
        usernameLabel.text = "Username"
        loginBox.addSubview(usernameLabel)
        
        
        var usernameTextField = UITextField(frame: CGRect(x: 110, y: 10, width: 100, height: 50))
        loginBox.addSubview(usernameTextField)
            
        var passwordLabel = UILabel(frame: CGRect(x: 10, y: 50, width: 100, height: 20))
        usernameLabel.text = "password"
        loginBox.addSubview(passwordLabel)
        
        var passwordTextField = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 50))
        loginBox.addSubview(passwordTextField)
        
        
        var loginButton = UIButton(frame: CGRect(x: 0, y: 300, width: self.view.frame.width, height: 30))
        loginButton.setTitle("login", forState: .Normal)
        loginButton.addTarget(self, action: "pressedLoginButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(loginButton)

    }
    
    func pressedLoginButton(sender: UIButton) {
        println("message")
    }

    
}

