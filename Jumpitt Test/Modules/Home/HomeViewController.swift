//
//  HomeViewController.swift
//  Jumpitt Test
//
//  Created by Benjamin Andres Caceres Ramirez on 2/20/21.
//  Copyright © 2021 Benjamin Andres Caceres Ramirez. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
    @IBAction func loginButtonAction(_ sender: Any) {
       
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        let navigationController = self.navigationController
        
        navigationController?.pushViewController(loginVC, animated: true)
        
    }
    
    
    @IBAction func signInButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SignIn", bundle: nil)
        let signInVC = storyboard.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        let navigationController = self.navigationController
        
        navigationController?.pushViewController(signInVC, animated: true)
    }
    
    func stylingButtons(){
        loginButton.layer.cornerRadius = .defaultCornerRadius
        signInButton.layer.cornerRadius = .defaultCornerRadius
        
        signInButton.layer.borderWidth = CGFloat(0.6)
        signInButton.layer.borderColor = UIColor(red: 0.79, green: 0.79, blue: 0.79, alpha: 1.00).cgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stylingButtons()
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
