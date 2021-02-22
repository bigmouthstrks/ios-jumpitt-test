//
//  SignInViewController.swift
//  Jumpitt Test
//
//  Created by Benjamin Andres Caceres Ramirez on 2/21/21.
//  Copyright © 2021 Benjamin Andres Caceres Ramirez. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var rutTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var createAccountButton: UIButton!
    
    @IBAction func createAccountButtonAction(_ sender: Any) {
        // Mostrar en consola los valores ingresados
        print("Contraseña: \(nameTextField.text ?? "")")
        print("E-mail: \(lastNameTextField.text ?? "")")
        print("Contraseña: \(rutTextField.text ?? "")")
        print("E-mail: \(emailTextField.text ?? "")")
        print("Contraseña: \(passwordTextField.text ?? "")")
    }
    
    func stylingContent(){
        // Darle bordes al botón de iniciar sesión
        createAccountButton.layer.cornerRadius = .defaultCornerRadius
        
        // Asignar color, fuente, y tamaño a los placeholder
        FormattingUtils().placeholderAttributes(textField: nameTextField, placeholderText: "Nombre")
        FormattingUtils().placeholderAttributes(textField: lastNameTextField, placeholderText: "Apellido")
        FormattingUtils().placeholderAttributes(textField: rutTextField, placeholderText: "RUT")
        FormattingUtils().placeholderAttributes(textField: emailTextField, placeholderText: "Correo electrónico")
        FormattingUtils().placeholderAttributes(textField: passwordTextField, placeholderText: "Crear Contraseña")
        
        // Dar indentación y margenes a los TextFields
        FormattingUtils().textFieldFormat(textField: nameTextField)
        FormattingUtils().textFieldFormat(textField: lastNameTextField)
        FormattingUtils().textFieldFormat(textField: rutTextField)
        FormattingUtils().textFieldFormat(textField: emailTextField)
        FormattingUtils().textFieldFormat(textField: passwordTextField)
        
        
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
