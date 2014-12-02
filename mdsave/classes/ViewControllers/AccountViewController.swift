//
//  AccountViewController.swift
//  mdsave
//
//  Created by IOS Developer on 10/22/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation


class AccountViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        let   topview = BaseUIView(frame:CGRectMake(0, 0, 320, 60))
        topview.backgroundColor = TopView_BackgroundColor
        view.addSubview(topview)
        
        let helpButton = BaseUIButton(frame: CGRectMake(275,22,25,25))
        helpButton.setBackgroundImage(UIImage(named: "question.png"), forState: nil)
        topview.addSubview(helpButton)
        helpButton.addTarget( self, action: "helpButtonAction", forControlEvents: UIControlEvents.TouchUpInside )
        
        let accountLabel = UILabel(frame: CGRectMake(130, 20, 80, 30))
        accountLabel.text = "Account"
        accountLabel.textColor = UIColor.whiteColor()
        self.view.addSubview(accountLabel)
        
    }
    
    //MARK: Actions 
    
    func helpButtonAction()
    {
        
        var helpView = HelpViewController()
        self.presentViewController(helpView, animated: true, completion: nil)
        
    }
    
}
