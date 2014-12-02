//
//  SearchViewController.swift
//  mdsave
//
//  Created by IOS Developer on 10/22/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation


class SearchViewController:BaseViewController, UITableViewDataSource,UITableViewDelegate, UISearchBarDelegate, UINavigationControllerDelegate
{
   // @IBOutlet var tableView: UITableView?
    
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
        
        let viewForCallAndRefine = UIButton(frame: CGRectMake(150,60,90,30))
        viewForCallAndRefine.setBackgroundImage(UIImage(named: "imageForView.png"), forState: UIControlState.Normal)
         self.view.addSubview(viewForCallAndRefine)
        
        
        let refineButton = BaseUIButton(frame:CGRectMake(240,60,100,30))
        refineButton.setTitle("Refine", forState: UIControlState.Normal)
        refineButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        refineButton.setBackgroundImage(UIImage(named: "refineimage.png"),forState: nil)
        self.view.addSubview(refineButton)
        refineButton.addTarget( self, action: "rightButtonAction", forControlEvents: UIControlEvents.TouchUpInside )
        
        let callMDsaveButton = BaseUIButton(frame: CGRectMake(0,60,150,30))
        callMDsaveButton.setTitle("Call MDsave", forState: UIControlState.Normal)
        
        callMDsaveButton.titleLabel?.textAlignment = NSTextAlignment.Left
        
        callMDsaveButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        callMDsaveButton.setBackgroundImage(UIImage(named: "cellMDsave2.png"),forState: nil)
        self.view.addSubview(callMDsaveButton)
        callMDsaveButton.addTarget( self, action: "leftButtonAction", forControlEvents: UIControlEvents.TouchUpInside )
        
        callMDsaveButton.titleLabel?.textColor = UIColor.blackColor()
        
        let searchBar = BaseUISearchBar(frame: CGRectMake(10, 20, 260, 30))
        searchBar.backgroundColor = UIColor.clearColor()
        topview.addSubview(searchBar)
        searchBar.searchBarStyle = UISearchBarStyle.Minimal
        searchBar.placeholder = "Flu Shot"
        
        
        let   viewForTable = BaseUIView(frame:CGRectMake(0, 90, 320, 570))
        viewForTable.backgroundColor = UIColor.clearColor()
        view.addSubview(viewForTable)
    
     
        var tableView:UITableView = UITableView(frame: CGRectMake(-15, 0, 330, 490), style: UITableViewStyle.Plain)
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        viewForTable.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 150
        tableView.footerViewForSection(0)
    
        
        tableView.sectionHeaderHeight = 0.0
        tableView.sectionFooterHeight = 0.0
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        

        
    }
    
     func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0.0
        } else {
            return 15.0
        }
        
    }

    
    
//MARK:  topRightButton Action
    func helpButtonAction()
    {
      
        var helpView = HelpViewController()
        self.presentViewController(helpView, animated: true, completion: nil)
        
    }
    
    func rightButtonAction()
    {
        println("Button Action  rightButtonAction")
    }
    
    func leftButtonAction()
    {
        println("Button Action  leftButtonAction")
    }
    

    
     func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var detailView = DetailsViewController()
        self.navigationController?.pushViewController(detailView, animated: true)
      }

    
// UITableViewDataSource functions
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    

    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
        return 10
        }
        return 1
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? CustomCells
            
            if cell == nil {
                
                cell = CustomCells(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
                
                cell!.frame.size.height = 180
            }
            
            
            cell!.docImage.image = UIImage(named: "dd.jpeg")
            cell!.hospitalLogo.image = UIImage(named: "ll.jpeg")
            
            cell!.hospitalNameLabel.text = "MRI Without Contrast"
            cell?.docNameLabel.text = "by Dr. Anna Sharpe"
            cell!.priceLabel.text = "$165.80"
            cell!.saveLabel.text = "Save"
            cell!.offerLabel.text = "Offered by"
            cell!.distanceLabel.text = "97.1 miles"
            cell?.savePriceLabel.text = "$150"
            cell!.buttonForViewMap.setTitle("view map", forState: UIControlState.Normal)
            cell!.buttonForViewMap.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
            cell?.buttonForViewMap.userInteractionEnabled
            return cell!

        }
        else {
            var cell1 = tableView.dequeueReusableCellWithIdentifier("Cell1") as? CustomCellForSection2inSearch
            
            if cell1 == nil {
                
                cell1 = CustomCellForSection2inSearch(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell1")
                
                cell1?.userInteractionEnabled = false
                cell1!.frame.size.height = 10
                cell1?.purchaseLabel.text = "Purchase with confidence"
                cell1?.purchaseInfoLabel.text = "No hidden costs,No-risk,Money-Back Guarantee"
                cell1?.docImage.image = UIImage(named: "icon2.png")
                cell1?.hospitalLogo.image = UIImage(named: "logo1.png")
              //  cell1?.viewForFooer.backgroundColor = UIColor.redColor()
                
            }
            return cell1!
        }

        
    }
    
}