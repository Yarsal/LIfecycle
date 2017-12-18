//
//  SecondViewController.swift
//  lifecycle
//
//  Created by Customer on 08.12.17.
//  Copyright © 2017 Customer. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
   
  var MyString = String()
    
    override func viewDidLoad() {
    
      label.text = MyString
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("SecondVC")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("SecondDRMW")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
