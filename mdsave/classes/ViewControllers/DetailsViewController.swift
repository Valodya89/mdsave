//
//  DetailsViewController.swift
//  mdsave
//
//  Created by IOS Developer on 10/29/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation


class DetailsViewController: BaseViewController, UINavigationControllerDelegate {
    
  
    
    var topView = BaseUIView(frame: CGRectMake(0, 0, 320, 60))
    var backButton = UIButton(frame: CGRectMake(5, 20, 60, 30))
    var scrollView = UIScrollView(frame: CGRectMake(0, 60, 320, 700))
    var detailsLabel = UILabel(frame: CGRectMake(130, 20, 80, 30))
    var helpButton = UIButton(frame: CGRectMake(275,22,25,25))
    
    var docImage = UIImageView(frame: CGRectMake(10, 10, 80, 90))
    var procedureName = UILabel(frame: CGRectMake(100, 10, 200, 20))
    var docName = UILabel(frame: CGRectMake(100, 35, 200, 15))
    var price = UILabel(frame: CGRectMake(100, 55, 200, 40))
    var saveLabel = UILabel(frame: CGRectMake(100, 80, 40, 20))
    var savePrice = UILabel(frame: CGRectMake(135, 80, 40, 20))
    var aboutProcedure = UILabel(frame: CGRectMake(10, 105, 200, 30))
    var procedureExplanation = UITextView(frame: CGRectMake(5, 127, 315, 100))
    var seeMoreButton = UIButton(frame: CGRectMake(268, 220, 50, 30))
    var addCartBackgroundButton = UIButton(frame: CGRectMake(0, 248, 320, 90))
    var addToCartButton = UIButton(frame: CGRectMake(30, 260, 260, 60))
    var viewForLogo = UIView(frame: CGRectMake(0, 336, 320, 60))
    var mdsaveLogo = UIImageView(frame: CGRectMake(10, 323, 80, 80))
    var purchaseLabel = UILabel(frame: CGRectMake(100, 336, 180, 20))
    var purchaseInfoLabel = UILabel(frame: CGRectMake(115, 347, 150, 40))
    var spaceView = UIButton(frame: CGRectMake(0, 396, 320, 30))
    var providerInfoButton = UIButton(frame: CGRectMake(0, 426, 320, 40))
    var procedureInfoButton = UIButton(frame: CGRectMake(0, 466, 320, 40))
    var hospitalLogo = UIImageView(frame: CGRectMake(0, 506, 130, 50))
    var distanceLabel = UILabel(frame: CGRectMake(180, 506, 135, 50))
    var mapButton = UIButton(frame: CGRectMake(0, 556, 320, 150))
    var addresButton = UIButton(frame: CGRectMake(0, 706, 320, 40))
    var callButton = UIButton(frame: CGRectMake(0, 746, 160, 40))
    var goWebsiteButton = UIButton(frame: CGRectMake(160, 746, 160, 40))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.whiteColor()
        topView.backgroundColor = TopView_BackgroundColor
        backButton.setBackgroundImage(UIImage(named: "backButton.png"), forState: UIControlState.Normal)
        backButton.addTarget(self, action: "backButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        
       

        self.view.addSubview(topView)
        self.view.addSubview(backButton)
        self.view.addSubview(scrollView)
        
        detailsLabel.text = "Details"
        detailsLabel.textColor = UIColor.whiteColor()
        self.view.addSubview(detailsLabel)
        
        helpButton.setBackgroundImage(UIImage(named: "question.png"), forState: UIControlState.Normal)
        helpButton.addTarget(self, action: "helpButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(helpButton)
        
        scrollView.scrollEnabled = true
        scrollView.contentSize = CGSizeMake(320, 600)
        scrollView.contentInset = UIEdgeInsetsMake(0, 0,600, 0);
        
        docImage.image = UIImage(named: "dd.jpeg")
        scrollView.addSubview(docImage)
        
        procedureName.text = "MRI Without Contrast"
        procedureName.textColor = hospitalNameLabel_textColor
        procedureName.font = UIFont.systemFontOfSize(13)
        scrollView.addSubview(procedureName)
        
        docName.text = "DR. Anna Sharpe"
        docName.textColor = docNameLabe_textColor
        docName.font = UIFont.systemFontOfSize(11)
        scrollView.addSubview(docName)

        price.text = "$165.80"
        price.textColor = UIColor.blackColor()
        price.font = UIFont.systemFontOfSize(16)
        scrollView.addSubview(price)
        
        saveLabel.text = "Save"
        saveLabel.textColor = docNameLabe_textColor
        saveLabel.font = UIFont.systemFontOfSize(13)
        scrollView.addSubview(saveLabel)
        
        savePrice.text = "$120"
        savePrice.textColor = savePriceLabel_textColor
        savePrice.font = UIFont.systemFontOfSize(13)
        scrollView.addSubview(savePrice)
        
        aboutProcedure.text = "About this procedure"
        aboutProcedure.textColor = UIColor.blackColor()
        aboutProcedure.font = UIFont.systemFontOfSize(12)
        scrollView.addSubview(aboutProcedure)
        
        procedureExplanation.text = "sdfgbdsfgsdjbs;ldnfjkln  eorhjgioej hoiwhergjiowjeh woeifghj oseirfgj woeirfgj paoeiffdh rthd hfgh dfgh dfgh dfdhgldfskjghlkd fkg dfjg;lhmsd;fkbm ;dlkfgjbl;dmf osdjfkldsm;vkl osdfjvkldsfmfj wopeirfj "
        procedureExplanation.textColor = ProcedureExplanation_TextColor
        procedureExplanation.font = UIFont.systemFontOfSize(11)
        
        procedureExplanation.userInteractionEnabled = true
        procedureExplanation.scrollEnabled = true
        procedureExplanation.contentSize = CGSizeMake(315, 500)
        procedureExplanation.contentInset = UIEdgeInsetsMake(0, 0, 500, 0)
        scrollView.addSubview(procedureExplanation)
        
        seeMoreButton.setTitle("see more", forState: UIControlState.Normal)
        seeMoreButton.setTitleColor(Map_View_Text_Color, forState: UIControlState.Normal)
        seeMoreButton.titleLabel?.font = UIFont.systemFontOfSize(10)
        scrollView.addSubview(seeMoreButton)
        
        drawCustomLine(CGPointMake(0, 250), size:CGSizeMake(320, 1) ,viewForAddSubview: scrollView)
        addCartBackgroundButton.userInteractionEnabled = false
        scrollView.addSubview(addCartBackgroundButton)
        
        addToCartButton.setBackgroundImage(UIImage(named: "addToCart.png"), forState: UIControlState.Normal)
        addToCartButton.addTarget(self, action: "addToCartButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(addToCartButton)
        
        drawCustomLine(CGPointMake(0, 335),size:CGSizeMake(320, 1) , viewForAddSubview: scrollView)
        drawCustomLine(CGPointMake(0, 396),size:CGSizeMake(320, 1) , viewForAddSubview: scrollView)
        
        viewForLogo.backgroundColor = UIColor(red: 0xff5/255, green: 0xf5/255, blue: 0xf5/255, alpha: 1)
        scrollView.addSubview(viewForLogo)
        
        //spaceView.setBackgroundImage(UIImage(named: "imageForAddButtonView.png"), forState: UIControlState.Normal)
        scrollView.addSubview(spaceView)
        
        drawCustomLine(CGPointMake(0, 427),size:CGSizeMake(320, 1) , viewForAddSubview: scrollView)

        
        mdsaveLogo.image = UIImage(named: "icon2.png")
        scrollView.addSubview(mdsaveLogo)
        
        purchaseLabel.text = "Purchase with confidence"
        purchaseLabel.textAlignment = NSTextAlignment.Center
        purchaseLabel.textColor = hospitalNameLabel_textColor
        purchaseLabel.font = UIFont.systemFontOfSize(12)
        scrollView.addSubview(purchaseLabel)
        
        purchaseInfoLabel.text = "No hidde costs, No-risk, Money-Back Guaranee"
        purchaseInfoLabel.textAlignment = NSTextAlignment.Center
        purchaseInfoLabel.font = UIFont.systemFontOfSize(11)
        purchaseInfoLabel.numberOfLines = 2
        scrollView.addSubview(purchaseInfoLabel)
        
        providerInfoButton.setTitle("About This Provider", forState: UIControlState.Normal)
        providerInfoButton.setBackgroundImage(UIImage(named: "providerButton.png"), forState: UIControlState.Normal)
        providerInfoButton.setTitleColor(hospitalNameLabel_textColor, forState: UIControlState.Normal)
        providerInfoButton.addTarget(self, action: "providerInfoButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(providerInfoButton)
        
        procedureInfoButton.setTitle("Available Procedures", forState: UIControlState.Normal)
        procedureInfoButton.setBackgroundImage(UIImage(named: "providerButton.png"), forState: UIControlState.Normal)
        procedureInfoButton.setTitleColor(hospitalNameLabel_textColor, forState: UIControlState.Normal)
        procedureInfoButton.addTarget(self, action: "procedureInfoButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(procedureInfoButton)
        
        hospitalLogo.image = UIImage(named: "logo1.png")
        scrollView.addSubview(hospitalLogo)
        
        distanceLabel.text = "97.1" + " miles"
        distanceLabel.textAlignment = NSTextAlignment.Right
        distanceLabel.textColor = hospitalNameLabel_textColor
        scrollView.addSubview(distanceLabel)
        
        mapButton.setBackgroundImage(UIImage(named: "mapButton.png"), forState: UIControlState.Normal)
        mapButton.userInteractionEnabled = true
        mapButton.addTarget(self, action: "mapButtonAction", forControlEvents: UIControlEvents.TouchUpInside)
        scrollView.addSubview(mapButton)
        
        addresButton.setBackgroundImage(UIImage(named: "addresButton.png"), forState: UIControlState.Normal)
        addresButton.setTitle("337 22nd Avenue North Nashville, TN 37203", forState: UIControlState.Normal)
        addresButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        addresButton.titleLabel?.font = UIFont.systemFontOfSize(12)
        scrollView.addSubview(addresButton)
        
        callButton.setBackgroundImage(UIImage(named: "callButton.png"), forState: UIControlState.Normal)
        callButton.setTitle("  405-272-8338", forState: UIControlState.Normal)
        callButton.titleLabel?.textAlignment = NSTextAlignment.Center
        callButton.titleLabel?.font = UIFont.systemFontOfSize(13)
        callButton.setTitleColor(ProcedureExplanation_TextColor, forState: UIControlState.Normal)
        callButton.addTarget(self, action: "callButtonAction", forControlEvents: UIControlEvents.TouchUpInside)

        scrollView.addSubview(callButton)
        
        goWebsiteButton.setBackgroundImage(UIImage(named: "goWebsiteButton.png"), forState: UIControlState.Normal)
        goWebsiteButton.setTitle("  Visit Website", forState: UIControlState.Normal)
        goWebsiteButton.titleLabel?.textAlignment = NSTextAlignment.Center
        goWebsiteButton.titleLabel?.font = UIFont.systemFontOfSize(13)
        goWebsiteButton.setTitleColor(ProcedureExplanation_TextColor, forState: UIControlState.Normal)
        goWebsiteButton.addTarget(self, action: "goWebsiteButtonAction", forControlEvents: UIControlEvents.TouchUpInside)

        scrollView.addSubview(goWebsiteButton)
        
        addLabels("hoursLabel", text: "Office hours:",textAlignment: NSTextAlignment.Left,
                            textSize: 12, color:UIColor.blackColor(), frame: CGRectMake(10, 806, 100, 20))
        
        addLabels("monday", text: "Monday", textAlignment: NSTextAlignment.Left, textSize: 12,
                            color:ProcedureExplanation_TextColor,  frame: CGRectMake(10, 826, 100, 20))
        
        addLabels("tuesday", text: "Tuesday", textAlignment: NSTextAlignment.Left,
                         textSize: 12, color: UIColor.blackColor(), frame: CGRectMake(10, 846, 100, 20))
        addLabels("wednesday", text: "Wednesday", textAlignment: NSTextAlignment.Left,
                           textSize: 12, color: ProcedureExplanation_TextColor, frame: CGRectMake(10, 866, 100, 20))
        addLabels("thurday", text: "Thursday", textAlignment: NSTextAlignment.Left,
                         textSize: 12, color: ProcedureExplanation_TextColor, frame: CGRectMake(10, 886, 100, 20))
        addLabels("friday", text: "Friday", textAlignment: NSTextAlignment.Left,
                        textSize: 12, color:  ProcedureExplanation_TextColor, frame: CGRectMake(10, 906, 100, 20))
        addLabels("modHours", text: "7:30am - 6:00pm", textAlignment: NSTextAlignment.Right,
                          textSize: 11, color: ProcedureExplanation_TextColor, frame:  CGRectMake(210, 826, 100, 20))
        addLabels("tuesHours", text: "7:30am - 6:00pm", textAlignment: NSTextAlignment.Right,
                           textSize: 11, color: UIColor.blackColor(), frame:  CGRectMake(210, 846, 100, 20))
        addLabels("wednHours", text: "7:30am - 6:00pm", textAlignment: NSTextAlignment.Right,
                           textSize: 11, color: ProcedureExplanation_TextColor, frame:  CGRectMake(210, 866, 100, 20))
        addLabels("thursHours", text: "7:30am - 6:00pm", textAlignment: NSTextAlignment.Right,
                            textSize: 11, color: ProcedureExplanation_TextColor, frame:  CGRectMake(210, 886, 100, 20))
        addLabels("fridHours", text: "7:30am - 6:00pm", textAlignment: NSTextAlignment.Right,
                           textSize: 11, color: ProcedureExplanation_TextColor, frame:  CGRectMake(210, 906, 100, 20))
        
    }
    
    
    //MARK: buttons actions
    
    func helpButtonAction() {
        
        var helpView = HelpViewController()
        self.presentViewController(helpView, animated: true, completion: nil)
        
    }
    
    func backButtonAction() {
        var searchViewObject = SearchViewController()
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    func addToCartButtonAction() {
        println("add to cart")
    }
    
    func providerInfoButtonAction() {
        
        var providerlView = ProviderInfo()
        self.navigationController?.pushViewController(providerlView, animated: true)
        
    }
    
    func procedureInfoButtonAction() {
        var procedureView = AvailableProceduresViewController()
        self.navigationController?.pushViewController(procedureView, animated: true)
        
    }
    
    func mapButtonAction() {
        var mapView = MapViewController()
        self.presentViewController(mapView, animated: true, completion: nil)

        
    }
    
    func callButtonAction() {
        println("call button")
    }
    
    func goWebsiteButtonAction() {
        println("Go Website")
    }
    
    //MARK: add Labels
    func addLabels(name:String ,text:String,textAlignment:NSTextAlignment,textSize:CGFloat, color:UIColor, frame:CGRect) {
        
        var name = UILabel(frame: frame)
        name.text = text
        name.textAlignment = textAlignment
        name.font = UIFont.systemFontOfSize(textSize)
        name.textColor = color//
        scrollView.addSubview(name)
        
    }
}