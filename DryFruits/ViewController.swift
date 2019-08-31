//
//  ViewController.swift
//  DryFruits
//
//  Created by Santosh  on 09/08/19.
//  Copyright © 2019 Santosh . All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController ,  CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    
    
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
        
        // Ask for Authorisation from the User.
        self.locationManager.requestAlwaysAuthorization()
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        print("locations = \(locValue.latitude) \(locValue.longitude)")
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


