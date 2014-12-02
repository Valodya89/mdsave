//
//  CartViewController.swift
//  mdsave
//
//  Created by IOS Developer on 10/22/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation


class CartViewController: BaseViewController , UIAlertViewDelegate {
    
    var checkoutButton = UIButton(frame: CGRectMake(0, 0, 190, 30))
    var aaa = UIButton(frame: CGRectMake(0, 0, 90, 20))
    var viewForAlert = UIView()
    var alert = UIAlertView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewForAlert.backgroundColor = UIColor.redColor()
        
        viewForAlert.frame = alert.frame
        alert.reloadInputViews()
        self.view.backgroundColor = UIColor.whiteColor()
        alert.delegate = self
        checkoutButton.backgroundColor = UIColor.redColor()
        aaa.backgroundColor = UIColor.blueColor()
        let   topview = BaseUIView(frame:CGRectMake(0, 0, 320, 60))
        topview.backgroundColor = TopView_BackgroundColor
        self.view.addSubview(topview)
        
        let checkOutButton = BaseUIButton(frame: CGRectMake(235,22,65,30))
        checkOutButton.setBackgroundImage(UIImage(named: "checkOut.png"), forState: nil)
        checkOutButton.setTitle("Chek Out", forState: UIControlState.Normal)
        checkOutButton.titleLabel?.font = UIFont.systemFontOfSize(12)
        self.view.addSubview(checkOutButton)
        checkOutButton.addTarget( self, action: "checkOutButtonAction", forControlEvents: UIControlEvents.TouchUpInside )
        
        let cartLabel = UILabel(frame: CGRectMake(130, 20, 80, 30))
        cartLabel.text = "Cart"
        cartLabel.textColor = UIColor.whiteColor()
        self.view.addSubview(cartLabel)
        
    }
    
    //MARK: Actions
    
    func checkOutButtonAction()
    {
        alert.frame.size = CGSizeMake(290, 400)
        
        alert.addSubview(checkoutButton)
        alert.addSubview(aaa)
        alert.show()
        
    }
    
}