//
//  HelpQuestionsViewController.swift
//  mdsave
//
//  Created by IOS Developer on 11/5/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation

class HelpQuestionsViewController: BaseViewController , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout , UIAlertViewDelegate {
    
    var viewForHelpCenter = BaseUIView(frame: CGRectMake(0, 0, 320, 60))
    var helpCenterLabel = UILabel(frame: CGRectMake(110, 20, 100, 30))
    var backButton = BaseUIButton(frame: CGRectMake(5, 25, 30, 20))
    var questionsLabel = UILabel(frame: CGRectMake(0, 60, 320, 30))
    var collectionView = UICollectionView(frame: CGRectMake(0, 90, 320, 408), collectionViewLayout: UICollectionViewFlowLayout())

    var downView = BaseUIView(frame: CGRectMake(0, 490, 320, 78))
    var viewForLogo = BaseUIView(frame: CGRectMake(0, 500, 320, 48))
    var mdsaveLogo = UIImageView(frame: CGRectMake(10, 491, 62, 62))
    var hospitalLogo = UIImageView(frame: CGRectMake(240, 503, 70, 40))
    
    var purchaseLabel = UILabel(frame: CGRectMake(75, 503, 170, 10))
    var purchaseInfoLabel = UILabel(frame: CGRectMake(85, 510, 150, 40))
    
    var arrayByQuestions :[String] = []
    var arrayWithLabelHeights:[CGFloat] = [CGFloat](count: 19 , repeatedValue: 0.0)
    var arrayForBigQuestionCell:[String] = [String](count: 19 , repeatedValue: "")
    var arrayWithBigQuestionLabelHeights:[CGFloat] = [CGFloat](count: 19 , repeatedValue: 0.0)
    
    let alert = UIAlertView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
    
        arrayByQuestions = ["What does MDsave do?","How much on average will a patient save by booking a procedure through MDsave's website or mobile app?","Who can use the service?What if a patient has coverage through the Affordable Care Act's Health Insurance Marketplace?","Can a patient apply an MDsave payment to their deductible?","Is MDsave an insurance company?","How do providers benefit from working with MDsave?","How dose the company determine the pricing it displays?","What dose the price of a procedure include?","Call MDSave"]
        
        
        arrayForBigQuestionCell = ["0000t does MDsave do?How much on average will a patient save by booking a procedure through MDsave's website or mobile app?Who can use the service?What if a patient has coverage through the Affordable ",
            "1111t does MDsave do?How much on average will a patient save by booking a procedure through MDsave's website or mobile app?Who can use the service?What if a patient has coverage through the Affordable ",
            "22222t does MDsave do?How much on average will a patient save by  ",
            "3333t does MDsave do?How much on average will a patient save by booking a procedure through MDsave's website omobile",
            "4444t does MDsave do?How much on ave",
            "55555t does MDsave do?How much on average will a patient save by booking a procedure through MDsave's website or mobile appWho can use the service?What if a patient has coverage through the Affordable t does MDsave do?How much on average will a patient save by booking a procedure through MDsave's website or mobile app?Who can use the service?What if a patient has coverage through the Affordable ",
            "6666elskjgnrs;dgn s;fkjngs ;kljn;lsdk",
            "777777gfdhnjdgfngd"]
        
        alert.delegate = self
        downView.backgroundColor =  Cell_Color
        viewForLogo.backgroundColor = UIColor.whiteColor()
        viewForHelpCenter.backgroundColor = TopView_BackgroundColor
        
        backButton.setBackgroundImage(UIImage(named: "backButton1.png"), forState: UIControlState.Normal)
        backButton.addTarget(self, action: "backButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(backButton)
        mdsaveLogo.image = UIImage(named: "icon2.png")
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
        collectionView.backgroundColor = UIColor.whiteColor()
        
        collectionView.registerClass(CustomHelpQuestionCell.self, forCellWithReuseIdentifier: "Cell")
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        collectionView.delegate = self
        collectionView.dataSource = self

        self.view.addSubview(viewForHelpCenter)
        self.view.addSubview(downView)
        self.view.addSubview(viewForLogo)
        self.view.addSubview(helpCenterLabel)
        self.view.addSubview(backButton)
        self.view.addSubview(mdsaveLogo)
        self.view.addSubview(hospitalLogo)
        self.view.addSubview(purchaseLabel)
        self.view.addSubview(purchaseInfoLabel)
        
        questionsLabel.text = "Frequently  asked questions"
        questionsLabel.textColor = UIColor.whiteColor()
        questionsLabel.textAlignment = NSTextAlignment.Center
        questionsLabel.backgroundColor = QuestionsLabel_BackgroundColor
        self.view.addSubview(questionsLabel)
        
        self.view.addSubview(collectionView)
        
        getArrayWithLabelHights()
        getArrayWithBigQuestionLabelHights()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        getArrayWithLabelHights()
        getArrayWithBigQuestionLabelHights()
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return arrayByQuestions.count
    }
    
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath ) as CustomHelpQuestionCell
        
        
        if  arrayByQuestions[indexPath.row] != "insert"  &&  indexPath.row != arrayByQuestions.count - 1 {
            cell.questionLabel.textColor = hospitalNameLabel_textColor
            cell.questionLabel.text = arrayByQuestions[indexPath.row]
            cell.plusOrMinusButton.setBackgroundImage(UIImage(named: "plus.png"), forState: UIControlState.Normal)
            cell.questionLabel.frame.size.height = arrayWithLabelHeights[indexPath.row]
            cell.plusOrMinusButton.frame.origin.y = (arrayWithLabelHeights[indexPath.row] / 2 )
            cell.questionLabel.numberOfLines = Int(arrayWithLabelHeights[indexPath.row] / 10)
            cell.plusOrMinusButton.frame.size = CGSizeMake(20, 20)
            cell.backgroundColor = UIColor.whiteColor()
        
        return cell
        } else if arrayByQuestions[indexPath.row] != "insert"  &&  indexPath.row == arrayByQuestions.count - 1 {
            cell.backgroundColor = Cell_Color
            cell.questionLabel.text = "Call MDSave"
            cell.questionLabel.textColor = Cell_QuestionLabel_TextColor
            cell.plusOrMinusButton.setBackgroundImage(UIImage(named: "phon.png"), forState: UIControlState.Normal)
            cell.plusOrMinusButton.frame.size = CGSizeMake(15, 25)
            cell.plusOrMinusButton.frame.origin.y = 5
            cell.questionLabel.frame.origin.y = 5
            return cell

        } else if arrayByQuestions[indexPath.row] == "insert" {
            cell.questionLabel.font = UIFont.systemFontOfSize(12)
            cell.questionLabel.textColor = UIColor.blackColor()
            cell.questionLabel.text = arrayForBigQuestionCell[indexPath.row - 1]
            cell.questionLabel.frame.size.height = arrayWithBigQuestionLabelHeights[indexPath.row - 1]
            cell.questionLabel.numberOfLines = Int(arrayWithBigQuestionLabelHeights[indexPath.row - 1] / 10)
            cell.plusOrMinusButton.setBackgroundImage(UIImage(named: ""), forState: UIControlState.Normal)
            cell.backgroundColor = UIColor.whiteColor()
        return cell
        } else {
            return cell
        }
    }
    

    
     func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
       
        if  indexPath.row == arrayByQuestions.count - 1 {
            alert.title = "1-800-426-48-40"
            alert.addButtonWithTitle("Cancel")
            alert.addButtonWithTitle("Call")
            alert.show()
        } else {
            if arrayByQuestions[indexPath.row] != "insert" {
                var itemForTag = collectionView.cellForItemAtIndexPath(indexPath) as CustomHelpQuestionCell
                if itemForTag.tag != 1 {
                    
                    arrayByQuestions.insert("insert", atIndex: indexPath.row + 1)
                    let insertIndexPath = NSIndexPath(forItem: indexPath.row + 1, inSection: 0)
                    var item = collectionView.cellForItemAtIndexPath(NSIndexPath(forItem: indexPath.row  , inSection: 0)) as CustomHelpQuestionCell
                    
                    item.plusOrMinusButton.setBackgroundImage(UIImage(named: "minus.png"), forState: UIControlState.Normal)
                    collectionView.insertItemsAtIndexPaths([insertIndexPath])
                    collectionView.updateConstraintsIfNeeded()
                    collectionView.reloadData()
                    itemForTag.tag = 1
                }
                else  {
                    var item1 = collectionView.cellForItemAtIndexPath(NSIndexPath(forItem: indexPath.row , inSection: 0)) as CustomHelpQuestionCell
                    
                    item1.plusOrMinusButton.setBackgroundImage(UIImage(named: "plus.png"), forState: UIControlState.Normal)
                    arrayByQuestions.removeAtIndex(indexPath.row + 1)
                    let deleteIndexPath = NSIndexPath(forItem: indexPath.row + 1, inSection: 0)
                    itemForTag.tag = 0
                    collectionView.deleteItemsAtIndexPaths([deleteIndexPath])
                    collectionView.updateConstraintsIfNeeded()
                    collectionView.reloadData()
                    
                }
                    collectionView.updateConstraintsIfNeeded()
                    collectionView.reloadData()
            }
            

        }
}
    
    
    
    
    func collectionView(collectionView : UICollectionView,layout collectionViewLayout:UICollectionViewLayout,sizeForItemAtIndexPath indexPath:NSIndexPath) -> CGSize
    {
        
        if arrayByQuestions[indexPath.row] != "insert" {
      return  CGSizeMake(320, 20 + arrayWithLabelHeights[indexPath.row] )
        }
        return CGSizeMake(320, 20 + arrayWithBigQuestionLabelHeights[indexPath.row - 1]  )
        
    }
    
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 25, right: 0)
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0.5
        
    }
    

    
    //MARK: back_Button_Action
    
    func backButtonAction() {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }

    func getArrayWithLabelHights()  {
  
        for  var i = 0;i <  arrayByQuestions.count;i++ {
            var label = UILabel(frame: CGRectMake(10,10, 270, 20))
            label.text = String(arrayByQuestions[i] as NSString)
            label.font = UIFont.systemFontOfSize(13)
            label.numberOfLines = 0
            label.preferredMaxLayoutWidth = 270
            label.lineBreakMode = NSLineBreakMode.ByWordWrapping
            label.sizeToFit()
            arrayWithLabelHeights[i] = label.frame.size.height
        }
    }
    
    func getArrayWithBigQuestionLabelHights()  {
        for  var i = 0;i <  arrayForBigQuestionCell.count ;i++ {
            var label = UILabel(frame: CGRectMake(10,10, 300, 20))
            label.text = String(arrayForBigQuestionCell[i] as NSString)
            label.font = UIFont.systemFontOfSize(12)
            label.numberOfLines = 0
            label.preferredMaxLayoutWidth = 300
            label.lineBreakMode = NSLineBreakMode.ByWordWrapping
            label.sizeToFit()
            arrayWithBigQuestionLabelHeights[i] = label.frame.size.height
        }
    }
   
    //MARK: UIAlertViewDelegate
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        
        if buttonIndex == 1 {
            
            println("CALL")
        }
    }
    
}