//
//  ViewController.swift
//  DryFruits
//
//  Created by Santosh  on 09/08/19.
//  Copyright © 2019 Santosh . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /** Create the UILabel */
    var showLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.text = "Santosh have created the text and will use it"
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.sizeToFit()
        label.font = UIFont(name: "Helvetica-Bold", size: 16)
        return label
    }()
    
    var switchBtn : UIButton = {
        var button = UIButton()
        button.setTitle("To Do Add", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.showsTouchWhenHighlighted = true
        button.backgroundColor = button.isHighlighted ? UIColor.blue : UIColor.red
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Santosh added the merge file to the window")
        showLabel.frame = CGRect(x: 30, y: self.view.center.y, width: view.frame.width - 60, height: 40)
        switchBtn.frame = CGRect(x: 30, y: self.view.frame.origin.y + 70, width: view.frame.width - 60, height: 30)
        self.view.addSubview(switchBtn)
        self.view.addSubview(showLabel)
        self.view.bringSubviewToFront(showLabel)
        // Do any additional setup after loading the view.
    }
    
    @objc func buttonPressed() {
    print("Items are set selected")
    }
    @IBAction func clicked(_ sender: UIButton) {
        print("Button was clicked but not done anything for it")
    }
    override func viewDidLayoutSubviews() {
        /* Set the frame when the layout is changed */
        
    }
    

}


