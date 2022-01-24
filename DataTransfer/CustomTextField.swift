//
//  CustomTextField.swift
//  DataTransfer
//
//  Created by Santhosh on 11/01/22.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.customSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.customSetup()
    }
    
    
    
    
    
    func customSetup() {
        self.backgroundColor = .red
        self.font = UIFont.systemFont(ofSize: 30)
        self.textColor = .yellow
        
        self.layer.borderWidth = 5.0
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.cornerRadius = 10.0
        self.layer.masksToBounds = true
    }
    
}
