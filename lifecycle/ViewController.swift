//
//  ViewController.swift
//  lifecycle
//
//  Created by Customer on 08.12.17.
//  Copyright © 2017 Customer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    

    @IBAction func enter(_ sender: Any) {
    
    
if textField.text != ""{
    performSegue(withIdentifier: "segue" , sender: self)
    print("performSegue")
}
    }

override func viewDidLoad() {
    
    super.viewDidLoad()
    print ("viewDidload")
}

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    print ("didReceiveMemoryWarning")
}

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    let secondController = segue.destination as! SecondViewController
    secondController.MyString = textField.text!
    print("prepare")
}

override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    self.navigationController?.setNavigationBarHidden(true, animated: true)

    print ("viewWillAppear")
}

override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print ("viewDidAppear")
}

override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    
    self.navigationController?.setNavigationBarHidden(false, animated: true)

    
    print ("viewWillDisappear")
}

override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    print ("viewDidDisappear")
}

override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    print ("viewWillLayoutSubviews")
}

//  Autolayout происходит тут - между двумя этими методами

override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    print ("viewDidLayoutSubviews")
}
//
func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator){
    print ("viewWillTransitionToSize")
    
}
//




}
