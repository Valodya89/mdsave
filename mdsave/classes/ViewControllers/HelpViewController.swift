//
//  HelpViewController.swift
//  mdsave
//
//  Created by IOS Developer on 10/27/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation

protocol HelpViewControllerDelegate{
    func myHelpDidFinish(controller:HelpViewController,text:String)
}

class HelpViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate ,UINavigationControllerDelegate , UIAlertViewDelegate {
    
    var topView = BaseUIView(frame: CGRectMake(0, 0, 320, 60))
    var helpCenterLabel = UILabel(frame: CGRectMake(110, 20, 100, 30))
    var doneButton = BaseUIButton(frame: CGRectMake(240, 15, 70, 40))
    var questionsLabel = UILabel(frame: CGRectMake(0, 60, 320, 30))
    var tableViewForQuestions = UITableView(frame: CGRectMake(-13, 85, 335, 400))
    var downView = BaseUIView(frame: CGRectMake(0, 490, 320, 78))
    var viewForLogo = BaseUIView(frame: CGRectMake(0, 500, 320, 48))
    
    var phoneButton = UIButton(frame: CGRectMake(304, 5, 15, 26))
    
    var docImage = UIImageView(frame: CGRectMake(10, 491, 62, 62))
    var hospitalLogo = UIImageView(frame: CGRectMake(240, 503, 70, 40))
    
    var purchaseLabel = UILabel(frame: CGRectMake(75, 503, 170, 10))
    var purchaseInfoLabel = UILabel(frame: CGRectMake(85, 510, 150, 40))
    
    let alert = UIAlertView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewForQuestions.delegate = self
        tableViewForQuestions.dataSource = self

        alert.delegate = self
        
        self.view.backgroundColor = UIColor.whiteColor()
        downView.backgroundColor =  Cell_Color
        viewForLogo.backgroundColor = UIColor.whiteColor()
        topView.backgroundColor = TopView_BackgroundColor
        self.view.addSubview(topView)
        self.view.addSubview(downView)
        self.view.addSubview(viewForLogo)
        doneButton.setBackgroundImage(UIImage(named: "done.png"), forState: UIControlState.Normal)
        doneButton.titleLabel?.font = UIFont.systemFontOfSize(13)
        doneButton.setTitle("Done", forState: UIControlState.Normal)
        doneButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        doneButton.titleLabel?.textColor = UIColor.whiteColor()
        doneButton.addTarget(self, action: "doneButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        phoneButton.setBackgroundImage(UIImage(named: "phoneIcon.png"), forState: UIControlState.Normal)
        self.view.addSubview(doneButton)
        docImage.image = UIImage(named: "icon2.png")
        hospitalLogo.image = UIImage(named: "logo1.png")
        purchaseLabel.text = "Purchase with confidence"
        purchaseInfoLabel.text = "No hidden costs,No-risk,Money-Back Guarantee"
        purchaseInfoLabel.numberOfLines = 2
        purchaseLabel.font = UIFont.systemFontOfSize(11)
        purchaseInfoLabel.font = UIFont.systemFontOfSize(10)
        purchaseLabel.textColor =  hospitalNameLabel_textColor
        purchaseLabel.textAlignment = NSTextAlignment.Center
        purchaseInfoLabel.textAlignment = NSTextAlignment.Center
        helpCenterLabel.text = "Help Center"
        helpCenterLabel.textColor = UIColor.whiteColor()
        self.view.addSubview(helpCenterLabel)
        
        questionsLabel.text = "Frequently  asked questions"
        questionsLabel.textColor = UIColor.whiteColor()
        questionsLabel.textAlignment = NSTextAlignment.Center
        questionsLabel.backgroundColor = QuestionsLabel_BackgroundColor
        self.view.addSubview(questionsLabel)
        self.view.addSubview(tableViewForQuestions)
        self.view.addSubview(docImage)
        self.view.addSubview(hospitalLogo)
        self.view.addSubview(purchaseLabel)
        self.view.addSubview(purchaseInfoLabel)
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//MARK: done_Button_Action

    func doneButtonAction() {

        dismissViewControllerAnimated(true, completion: nil)

    }
    
//MARK:UITableViewDataSource, UITableViewDelegate
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 10.0
        } else {
            return 10.0
        }
        
    }
         func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
            if section == 1 {
                return 0.0
            }else {
                return 10.0
            }
        }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 6
        }
        return 3
    }
    
    

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        if indexPath.section == 1 && indexPath.row == 0 {
            
            alert.title = "1-800-426-48-40"
            alert.addButtonWithTitle("Cancel")
            alert.addButtonWithTitle("Call")
            alert.show()
        } else {
            
            var helpQuestionView = HelpQuestionsViewController()
            //self.navigationController?.pushViewController(helpQuestionView, animated: true)
            self.presentViewController(helpQuestionView, animated: true, completion: nil)

            
        }
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? UITableViewCell
            
            if cell == nil {
                
                cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
                 cell!.frame.size.height = 5
                cell?.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
            }
            cell?.textLabel.text = "  MDSave Service General Questions"
            cell?.textLabel.textColor = hospitalNameLabel_textColor
                       return cell!
            
        }
        else {
            var cell1 = tableView.dequeueReusableCellWithIdentifier("Cell1") as? UITableViewCell
            
            if cell1 == nil {
                
                cell1 = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell1")
                 cell1!.frame.size.height = 5
            }
            if indexPath.row == 0 {
               
                cell1?.accessoryType = UITableViewCellAccessoryType.None
                cell1?.contentView.addSubview(phoneButton)

            }else {
                cell1?.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator

            }
            
            if indexPath.row == 0 {
                cell1?.textLabel.text = "  Call MDSave"
                cell1?.textLabel.textColor = UIColor.blueColor()
                return cell1!
            } else if indexPath.row == 1 {
            cell1?.textLabel.text = "  About"
            cell1?.textLabel.textColor = UIColor.blackColor()
            return cell1!
            }
            cell1?.textLabel.text = "  Privacy Policy"
            cell1?.textLabel.textColor = UIColor.blackColor()
            return cell1!
        }
        
        
    }

    //MARK: UIAlertViewDelegate
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        
        if buttonIndex == 1 {
            println("CALL")
        }
    }

    
   }