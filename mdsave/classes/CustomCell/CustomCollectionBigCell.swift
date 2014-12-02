//
//  CustomCollectionBigCell.swift
//  mdsave
//
//  Created by IOS Developer on 11/4/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation

class CustomCollectionBigCell: UICollectionViewCell {
    
    var topLineImage = UIButton(frame: CGRectMake(0, 0, 320, 1))
    var procedurePrice = UILabel(frame: CGRectMake(10, 5, 90, 30))
    var saveLabel = UILabel(frame: CGRectMake(10, 30, 30, 20))
    var savePriceLabel = UILabel(frame: CGRectMake(40, 30, 50, 20))
    var addToCartButton = UIButton(frame: CGRectMake(160, 10, 160, 40))
    var lineImage = UIButton(frame: CGRectMake(15, 65, 290, 1))
    var procedureInfoBLabel = UILabel(frame: CGRectMake(10, 70, 300, 150))
    var buttonForLogo = UIButton(frame: CGRectMake(0, 220, 320, 45))
    var hospLogo = UIImageView(frame: CGRectMake(10, 210, 60, 60))
    var purchaseLabel = UILabel(frame: CGRectMake(100, 225, 240, 10))
    var purchaseInfoLabel = UILabel(frame: CGRectMake(110, 230, 150, 40))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        procedurePrice.font = UIFont.systemFontOfSize(14)
        saveLabel.font = UIFont.systemFontOfSize(12)
        savePriceLabel.font = UIFont.systemFontOfSize(12)
        saveLabel.textColor = docNameLabe_textColor
        savePriceLabel.textColor = savePriceLabel_textColor
        procedureInfoBLabel.font = UIFont.systemFontOfSize(12)
        purchaseLabel.textColor = hospitalNameLabel_textColor
        purchaseLabel.font = UIFont.systemFontOfSize(11)
        purchaseInfoLabel.font = UIFont.systemFontOfSize(10)
        procedureInfoBLabel.numberOfLines = 6
        purchaseInfoLabel.numberOfLines = 2
        procedureInfoBLabel.textColor = UIColor.blackColor()  //(red: 0x66/255, green: 0x66/255, blue: 0x66/255, alpha: 1)
        buttonForLogo.userInteractionEnabled = false
        contentView.addSubview(topLineImage)
        contentView.addSubview(procedurePrice)
        contentView.addSubview(saveLabel)
        contentView.addSubview(savePriceLabel)
        contentView.addSubview(addToCartButton)
        contentView.addSubview(lineImage)
        contentView.addSubview(procedureInfoBLabel)
        contentView.addSubview(buttonForLogo)
        contentView.addSubview(hospLogo)
        contentView.addSubview(purchaseLabel)
        contentView.addSubview(purchaseInfoLabel)
        
    }
    
    
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    
}