//
//  LoginViewController.swift
//  Jumpitt Test
//
//  Created by Benjamin Andres Caceres Ramirez on 2/20/21.
//  Copyright © 2021 Benjamin Andres Caceres Ramirez. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func loginButtonAction(_ sender: Any) {
        // Mostrar en consola los valores ingresados
        print("Contraseña: \(passwordTextField.text ?? "")")
        print("E-mail: \(emailTextField.text ?? "")")
    }
    
    func stylingContent(){
        // Darle bordes al botón de iniciar sesión
        loginButton.layer.cornerRadius = .defaultCornerRadius
        
        // Asignar color, fuente, y tamaño a los placeholder
        FormattingUtils().placeholderAttributes(textField: emailTextField, placeholderText: "Correo electrónico")
        FormattingUtils().placeholderAttributes(textField: passwordTextField, placeholderText: "Contraseña")
        
        FormattingUtils().textFieldFormat(textField: passwordTextField)
        FormattingUtils().textFieldFormat(textField: emailTextField)
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.tintColor = UIColor(red: 0.55, green: 0.56, blue: 0.58, alpha: 1.00)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stylingContent()
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
