//
//  MapViewController.swift
//  mdsave
//
//  Created by Valodya on 11/2/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import MapKit

import UIKit
import Foundation

class MapViewController: BaseViewController {
    
    var map = MKMapView(frame: CGRectMake(0, 0, 320, 488))
    var doneButton = UIButton(frame: CGRectMake(260, 10, 50, 30))
    var downView = UIView(frame: CGRectMake(0, 488, 320, 80))
    
    var firstAddresButton = UILabel(frame: CGRectMake(5, 508, 205, 10))
    var secondAddresButton = UILabel(frame: CGRectMake(5, 528, 205, 10))
    var directionButton = UIButton(frame: CGRectMake(220, 488, 100, 80))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(map)
        
        doneButton.setTitle("Done", forState: UIControlState.Normal)
        doneButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        doneButton.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(doneButton)
        doneButton.addTarget(self, action: "doneButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        
        downView.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(downView)
        
        firstAddresButton.text = "Nashville ,TN 37203"
        firstAddresButton.textColor = UIColor.blackColor()
        firstAddresButton.font = UIFont.systemFontOfSize(13)
        self.view.addSubview(firstAddresButton)
        
        secondAddresButton.text = "337 22nd Avenue North"
        secondAddresButton.textColor = docNameLabe_textColor
        secondAddresButton.font = UIFont.systemFontOfSize(11)
        self.view.addSubview(secondAddresButton)
        
        directionButton.userInteractionEnabled = true
        directionButton.setTitle("Direction", forState: UIControlState.Normal)
        directionButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        directionButton.setBackgroundImage(UIImage(named: "directions.png"), forState: UIControlState.Normal)
        self.view.addSubview(directionButton)
        directionButton.addTarget(self, action: "directionButtonAction", forControlEvents: UIControlEvents.TouchUpInside)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: Done Button Action
    func doneButtonAction() {
        dismissViewControllerAnimated(true, completion: nil)

    }
    
    func directionButtonAction() {
        println("Direction!!")
    }
}