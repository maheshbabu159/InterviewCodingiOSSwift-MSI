//
//  RegisterViewController.swift
//  iOSInterviewPreparation
//
//  Created by apple on 27/04/17.
//  Copyright (c) 2017 apple. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol RegisterViewControllerInput
{
  func displaySomething(viewModel: Register.Something.ViewModel)
}

protocol RegisterViewControllerOutput
{
  func doSomething(request: Register.Something.Request)
}

class RegisterViewController: UIViewController, RegisterViewControllerInput
{
  var output: RegisterViewControllerOutput!
  var router: RegisterRouter!
  
  // MARK: - Object lifecycle
  
  override func awakeFromNib()
  {
    super.awakeFromNib()
    RegisterConfigurator.sharedInstance.configure(viewController: self)
  }
  
  // MARK: - View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    doSomethingOnLoad()
  }
  
  // MARK: - Event handling
  
  func doSomethingOnLoad()
  {
    // NOTE: Ask the Interactor to do some work
    
    let request = Register.Something.Request()
    output.doSomething(request: request)
  }
  
  // MARK: - Display logic
  
  func displaySomething(viewModel: Register.Something.ViewModel)
  {
    // NOTE: Display the result from the Presenter
    
    // nameTextField.text = viewModel.name
  }
}
