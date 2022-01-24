//
//  SecondViewController.swift
//  DataTransfer
//
//  Created by Santhosh on 11/01/22.
//

import UIKit

//@objc protocol SecondViewControllerDelegate: AnyObject {
//    func sendTextToFirstController(text: String?)
//   @objc optional func method1(text: String?)
//}

protocol SecondViewControllerDelegate: AnyObject {
    func sendTextToFirstController(text: String?)
}

class SecondViewController: UIViewController {
    
    weak var delegate: SecondViewControllerDelegate?
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var dataText: UITextField!

    var data: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.displayLabel.text = data ?? ""
    }
    
    
    func setData(data: String?) {
        self.data = data
    }
    
    @IBAction func goBack(_ sender: Any) {
        self.delegate?.sendTextToFirstController(text: dataText.text)
        self.navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
