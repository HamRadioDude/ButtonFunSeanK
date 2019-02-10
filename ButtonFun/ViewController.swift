//
//  ViewController.swift
//  ButtonFun
//
//  Created by student on 2/10/19.
//  Copyright © 2019 Sean Klechak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let title = sender.title(for: .selected)!
        let text = "\(title) button pressed"
        statusLabel.text = text
        
        // page 82. adding a mutable attributed string
        let styledText = NSMutableAttributedString(string:text)
        let attributes = [
            NSAttributedString.Key.font:
            // Note, the book is already outdated as tehy specified to use NSFontAttributeName:
                UIFont.boldSystemFont(ofSize: statusLabel.font.pointSize)
        ]
        
        // created a dictionary above, to hold the attributes we want to apply to the string
        
        // the value we pass will be hold
        
        let nameRange = (text as NSString).range(of:title)
        styledText.setAttributes(attributes, range: nameRange)
        
        statusLabel.attributedText = styledText
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

