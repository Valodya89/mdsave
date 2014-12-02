//
//  ProviderInfo.swift
//  mdsave
//
//  Created by IOS Developer on 10/30/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation


class ProviderInfo: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var topView = BaseUIView(frame: CGRectMake(0, 0, 320, 60))
    var backButton = UIButton(frame: CGRectMake(5, 20, 60, 30))
    var aboutProvLabel = UILabel(frame: CGRectMake(100, 20, 130, 30))
    var tableView = UITableView(frame: CGRectMake(0, 60, 320, 440))
    var docImage = UIImageView(frame: CGRectMake(10, 10, 60, 75))
    var addToListButton = UIButton(frame: CGRectMake(200, 55, 110, 35))
    var writeReviewButton = UIButton(frame: CGRectMake(20, 870, 280, 50))
    var numberOfLinesForDetile = Int()
    
   
    
    var docDataName = ["Meet Dr.Anna Sharpe","Practice Name","Hospital Affiliations","Board Certification","Practice Description","Awards and Publications","Medical school","Insurance Information","What patients are saying"]
    
    var docData = ["Family medicine","dfhrh","jvgugjghghjhfgfhjgfuijkghgjkgfdfhbjknlmdcfvbnmsdfghjksdfghnjm,.dsdhrtshbsrtbssgfjkshgfuiashbkjfhskjdesilugfsdfgsdghkdsjfhbvsdlnb",
    "sergfaewfawsbf awgdfjawsbhdfluhas ","sdfeaesrgsesdfv","afsdagasdvashdjkvbasj jasbdbahasbdchjas","awleidhLKJDH lkadsj","akjshdfckjn","kasbckjskjd laskdckjsa jhsd lksa khgsd cskajkjsdhf casjkdh cljsahdckjsh ;askjdfklnsaf sjdfjdsnkjzndf gddjkf gdjhgkjld gsdkfhglkzgfnkldsj gsdskljdfhnkldzfgn dfgnsdkljfvn slkdjvnskdffvn kgfdfkljndf skdjfgnv dsklfjgnsdkjgndf ksdjf"]
    
     var arrayWithLabelHights: [CGFloat] = [CGFloat](count: 9 , repeatedValue: 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.whiteColor()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorInset = UIEdgeInsets(top: 0, left:0, bottom: 0, right: 20)

         numberOfLinesForDetile = 0
        
        topView.backgroundColor = UIColor(red: 0x1c/255, green: 0x58/255, blue: 0x80/255, alpha: 1)
        self.view.addSubview(topView)
        
        backButton.setBackgroundImage(UIImage(named: "backButton.png"), forState: UIControlState.Normal)
        backButton.addTarget(self, action: "backButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(backButton)
        
        aboutProvLabel.text = "About provider"
        aboutProvLabel.textColor = UIColor.whiteColor()
        self.view.addSubview(aboutProvLabel)
        
        self.view.addSubview(tableView)
        
        getArrayWithLabelHights()
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    //MARK: Button Action
    
    func backButtonAction() {
        var searchViewObject = SearchViewController()
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    //MARK:UITableViewDataSource, UITableViewDelegate

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return docData.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if indexPath.row == 0 {
            return 100
        } else if indexPath.row == 8 {
         return   arrayWithLabelHights[indexPath.row] + 120
        } else {

            return arrayWithLabelHights[indexPath.row] + 40
       }
    }
    
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
           var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? CustomCellForProviderInfo
          
                cell = CustomCellForProviderInfo(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
            
                if indexPath.row == 0 {
                    cell?.docImage.image = UIImage(named: "dd.jpeg")
                    cell?.docInfoName.frame = CGRectMake(80, 10, 200, 20)
                    cell?.docInfo.frame = CGRectMake(80, 40, 200, 20)
                    cell?.addToListButton.setBackgroundImage(UIImage(named: "addToList.png"), forState: UIControlState.Normal)
                    cell?.docInfoName.text = docDataName[indexPath.row]
                    cell?.docInfo.text = docData[indexPath.row]
                }else if indexPath.row == 8 {
                    
                    cell?.docInfoName.font = UIFont.systemFontOfSize(14)
                    cell?.docInfoName.textColor = UIColor.blackColor()
                    cell?.docInfoName.text = docDataName[indexPath.row]
                    cell?.docInfo.frame = CGRectMake(10, 20, 300,arrayWithLabelHights[indexPath.row])
                    cell?.docInfo.numberOfLines = numberOfLinesForDetile/20
                    cell?.docInfo.text = docData[indexPath.row]
                    cell?.writeReviewButton.frame = CGRectMake(20, 40 + arrayWithLabelHights[indexPath.row]+10, 280, 50)
                    cell?.writeReviewButton.backgroundColor = WriteReviewButton_BackgroundColor
                    cell?.writeReviewButton.setTitle("Write a Review", forState: UIControlState.Normal)
                    cell?.writeReviewButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
                }else {
                    
                    cell?.docInfoName.text = docDataName[indexPath.row]
                    cell?.docInfo.frame = CGRectMake(10, 30, 300,arrayWithLabelHights[indexPath.row])
                    cell?.docInfo.numberOfLines = numberOfLinesForDetile/20
                    cell?.docInfoName.textColor = hospitalNameLabel_textColor
                    cell?.docInfo.text = docData[indexPath.row]
                }
                return cell!

    }

    
    //MARK: get Array With Labels Hights
    func getArrayWithLabelHights() {
        
        
        for  var i = 0;i <  docData.count;i++ {
            var label = UILabel(frame: CGRectMake(10,10, 300, 20))
            var str = String()
        str = docData[i]
        label.text = str
        label.font = UIFont.systemFontOfSize(12)
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = 300
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        
        label.sizeToFit()
        numberOfLinesForDetile = Int(label.frame.size.height)
            arrayWithLabelHights[i] = label.frame.size.height

        }
          }
    
}














