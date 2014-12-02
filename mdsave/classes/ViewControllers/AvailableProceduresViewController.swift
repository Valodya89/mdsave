//
//  AvailableProceduresViewController.swift
//  mdsave
//
//  Created by Valodya on 11/2/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit

import Foundation


class AvailableProceduresViewController: BaseViewController ,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    var topView = UIView(frame: CGRectMake(0, 0, 320, 60))
    var procedurePriceView = UIButton(frame: CGRectMake(0, 60, 320, 40))
    var procedureButton = UILabel(frame: CGRectMake(10, 65, 200, 20))
    var mdsaveButton = UILabel(frame: CGRectMake(230, 60, 120, 20))
    var mdsavePrice = UILabel(frame: CGRectMake(243, 75, 50, 10))
    var availableProcedures = UILabel(frame: CGRectMake(70, 25, 220, 30))
    var backButton = UIButton(frame: CGRectMake(5, 25, 60, 30))
    var size = CGSizeMake(320, 50)
    var collectionView = UICollectionView(frame: CGRectMake(0, 90, 320, 428), collectionViewLayout: UICollectionViewFlowLayout())
    var arrayForItemData:[String] = []
    var arrayByProcedureInfo:[String] = []
    var arrayWithLabelHights: [CGFloat] = [CGFloat](count: 9 , repeatedValue: 0.0)
    var arrayForNUmberOfLines: [Int] = [Int](count: 9 , repeatedValue: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        arrayForItemData = ["1","2","3","4"]
        arrayByProcedureInfo = ["hgfkgvkljgjlhbjhb kjhgjkhg jkjhgjkhgjhkgkjgjhvjhkvkjhbv jhkjhkbjhkbv kjvkjhgkjhg kjlh kjhgkjhbvjkhbghjb,jhbjhk kjhgkjhgjlkhgkjhb kjhbkjhbjkhgvljhg kugkjgliuhgiljh ljhgljhljkhb llhgjlhbjkhbjhb ","iseohfgersoahjv;odsnjgvklj lisaudfhkjds lsdjkv","drthdrhdfhbd","htdfngfdsghfsgh","slbnpotbjnsopgbnpbnspobkm serng son sdpofnjgds pobjn"]
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.registerClass(CustomCellForAvailableProcedure.self, forCellWithReuseIdentifier: "Cell")
        collectionView.registerClass(CustomCollectionBigCell.self, forCellWithReuseIdentifier: "Cell1")
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        topView.backgroundColor = TopView_BackgroundColor
        self.view.addSubview(topView)
        backButton.setBackgroundImage(UIImage(named: "backButton.png"), forState: UIControlState.Normal)
        backButton.addTarget(self, action: "backButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(backButton)
        collectionView.backgroundColor = UIColor.whiteColor()
        
        availableProcedures.text = "      Available Procedures"
        availableProcedures.font = UIFont.boldSystemFontOfSize(14)
        availableProcedures.textColor = UIColor.whiteColor()
        
        self.view.addSubview(availableProcedures)
        procedurePriceView.setBackgroundImage(UIImage(named: "procViewImage.png"), forState: UIControlState.Normal)
        procedurePriceView.userInteractionEnabled = false
        self.view.addSubview(procedurePriceView)
        procedureButton.text = "Procedure"
        procedureButton.textColor = UIColor.whiteColor()
        procedureButton.font = UIFont.systemFontOfSize(13)
        mdsaveButton.text = "MDsave"
        mdsaveButton.textColor = UIColor.whiteColor()
        mdsaveButton.font = UIFont.systemFontOfSize(13)
        
        mdsavePrice.text = "Price"
        mdsavePrice.textColor = UIColor.whiteColor()
        mdsavePrice.font = UIFont.systemFontOfSize(10)
        
        self.view.addSubview(mdsavePrice)
        self.view.addSubview(procedureButton)
        self.view.addSubview(mdsaveButton)
        self.view.addSubview(collectionView)
        
      
        getArrayWithLabelHights()
        
    }
    
    //MARK: UICollectionViewDataSource, UICollectionViewDelegate
    
    
     func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayForItemData.count
    }
    
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
         var cellBig = collectionView.dequeueReusableCellWithReuseIdentifier("Cell1", forIndexPath: indexPath ) as CustomCollectionBigCell
        
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as CustomCellForAvailableProcedure
        
    
            if arrayForItemData[indexPath.row] != "insert" {
                
                cell.panelName.text = "Cholesterol Medication Maintenance Panel"
                cell.mdsavePrice.text = "$120.20"
                cell.plusOrMinusImage.image = UIImage(named: "plus.png")
                if indexPath.row % 2 != 0 {
                    cell.backgroundColor = PairCellColor
                } else {
                    cell.backgroundColor = OddCellColor
                }
                 return cell
            }
        
            cellBig.backgroundColor = UIColor.whiteColor()
            cellBig.topLineImage.backgroundColor = LineImage_BackgroundColor
            cellBig.procedurePrice.text = "$520.80"
            cellBig.saveLabel.text = "Save"
            cellBig.savePriceLabel.text = "$30.80"
            cellBig.addToCartButton.setBackgroundImage(UIImage(named: "addToCart.png"), forState: UIControlState.Normal)
            cellBig.lineImage.backgroundColor = LineImage_BackgroundColor
            cellBig.procedureInfoBLabel.frame.size.height = arrayWithLabelHights[indexPath.row - 1]
            cellBig.procedureInfoBLabel.text = arrayByProcedureInfo[indexPath.row - 1]
      
            cellBig.procedureInfoBLabel.numberOfLines = arrayForNUmberOfLines[indexPath.row - 1]
            cellBig.buttonForLogo.frame.origin.y = 90 + arrayWithLabelHights[indexPath.row - 1]
            cellBig.purchaseLabel.frame.origin.y = 95 + arrayWithLabelHights[indexPath.row - 1]
            cellBig.purchaseInfoLabel.frame.origin.y = 100 + arrayWithLabelHights[indexPath.row - 1]
            cellBig.hospLogo.frame.origin.y = 82 + arrayWithLabelHights[indexPath.row - 1]
            cellBig.buttonForLogo.setBackgroundImage(UIImage(named: "buttonForLogo.png"), forState: UIControlState.Normal)
            cellBig.purchaseLabel.text = "Purchase with confidence"
            cellBig.purchaseInfoLabel.text = "No hidde costs, No-risk, Money-Back Guaranee"
            cellBig.hospLogo.image = UIImage(named: "icon2.png")
        
           return cellBig
       
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        
        if arrayForItemData[indexPath.row] != "insert" {
             var itemForTag = collectionView.cellForItemAtIndexPath(indexPath) as CustomCellForAvailableProcedure
            if itemForTag.tag != 1 {
                
                arrayForItemData.insert("insert", atIndex: indexPath.row + 1)
                let insertIndexPath = NSIndexPath(forItem: indexPath.row + 1, inSection: 0)
                var item = collectionView.cellForItemAtIndexPath(NSIndexPath(forItem: indexPath.row  , inSection: 0)) as CustomCellForAvailableProcedure
                
                item.plusOrMinusImage.image = UIImage(named: "minus.png")
                collectionView.insertItemsAtIndexPaths([insertIndexPath])
                collectionView.updateConstraintsIfNeeded()
                collectionView.reloadData()
                itemForTag.tag = 1
            }
            else  {
                var item1 = collectionView.cellForItemAtIndexPath(NSIndexPath(forItem: indexPath.row , inSection: 0)) as CustomCellForAvailableProcedure
                
                item1.plusOrMinusImage.image = UIImage(named: "plus.png")
                arrayForItemData.removeAtIndex(indexPath.row + 1)
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


  
    
        func collectionView(collectionView : UICollectionView,layout collectionViewLayout:UICollectionViewLayout,sizeForItemAtIndexPath indexPath:NSIndexPath) -> CGSize
        {
    
            var labelHaight = arrayWithLabelHights[indexPath.row]
            
            
            if arrayForItemData[indexPath.row] == "insert" {

            return  CGSizeMake(320, 150 + arrayWithLabelHights[indexPath.row - 1])
            }
          
          return size
    }

    

     func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)

    }
     func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 0.0

    }

    
 
    
    func backButtonAction() {
        var detailViewObject = DetailsViewController()
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func getArrayWithLabelHights() {
        
        
        for  var i = 0;i <  arrayByProcedureInfo.count;i++ {
            var label = UILabel(frame: CGRectMake(10,10, 300, 20))
            var str = String()
            str = arrayByProcedureInfo[i]
            label.text = str
            label.font = UIFont.systemFontOfSize(12)
            label.numberOfLines = 0
            label.preferredMaxLayoutWidth = 300
            label.lineBreakMode = NSLineBreakMode.ByWordWrapping
            label.sizeToFit()
            arrayForNUmberOfLines[i] = Int(label.frame.size.height)
            arrayWithLabelHights[i] = label.frame.size.height
            
        }
    }
    

}