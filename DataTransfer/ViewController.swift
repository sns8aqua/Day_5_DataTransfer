//
//  ViewController.swift
//  DataTransfer
//
//  Created by Santhosh on 11/01/22.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {
   
    @IBOutlet weak var enterTextField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func addButton(_ sender: Any) {
        if let controller = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
            controller.setData(data: enterTextField.text)
            controller.delegate = self
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    func sendTextToFirstController(text: String?) {
        print(text)
    }
    
}



