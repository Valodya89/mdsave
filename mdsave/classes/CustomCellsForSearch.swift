//
//  CustomCells.swift
//  mdsave
//
//  Created by IOS Developer on 10/22/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation


class CustomCells: BaseUITableViewCell {
    
    var docImage = UIImageView(frame: CGRectMake(20, 7, 80, 90))
    var hospitalLogo = UIImageView(frame: CGRectMake(20, 115, 160, 30))
    
    var hospitalNameLabel = UILabel(frame: CGRectMake(115, 0, 150, 30))
    var docNameLabel = UILabel(frame: CGRectMake(115, 30,150, 30))
    var priceLabel = UILabel(frame: CGRectMake(115, 52, 150, 40))
    var saveLabel = UILabel(frame: CGRectMake(115, 75, 50, 30))
    var offerLabel = UILabel(frame: CGRectMake(20, 97, 70, 20))
    var distanceLabel = UILabel(frame: CGRectMake(215, 115, 110, 40))
    var savePriceLabel = UILabel(frame: CGRectMake(155, 75, 90, 30))

    var buttonForViewMap = UIButton(frame: CGRectMake(265, 117, 80, 5))
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(hospitalNameLabel)
        contentView.addSubview(docNameLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(saveLabel)
        contentView.addSubview(offerLabel)
        contentView.addSubview(distanceLabel)
        contentView.addSubview(savePriceLabel)
        
        contentView.addSubview(docImage)
        contentView.addSubview(hospitalLogo)
        contentView.addSubview(buttonForViewMap)

        
        hospitalNameLabel.font = UIFont.systemFontOfSize(15)
        docNameLabel.font = UIFont.systemFontOfSize(10)
        priceLabel.font = UIFont.systemFontOfSize(18)
        saveLabel.font = UIFont.systemFontOfSize(13)
        offerLabel.font = UIFont.systemFontOfSize(10)
        distanceLabel.font = UIFont.systemFontOfSize(15)
        savePriceLabel.font = UIFont.systemFontOfSize(13)
        
        hospitalNameLabel.textAlignment = NSTextAlignment.Left
        docNameLabel.textAlignment = NSTextAlignment.Left
        priceLabel.textAlignment = NSTextAlignment.Left
        saveLabel.textAlignment = NSTextAlignment.Left
        offerLabel.textAlignment = NSTextAlignment.Left
        distanceLabel.textAlignment = NSTextAlignment.Right
        savePriceLabel.textAlignment = NSTextAlignment.Left
        
        savePriceLabel.textColor = UIColor.greenColor()
        hospitalNameLabel.textColor = hospitalNameLabel_textColor
        docNameLabel.textColor = docNameLabe_textColor
        saveLabel.textColor = docNameLabe_textColor
        offerLabel.textColor = docNameLabe_textColor
        savePriceLabel.textColor = savePriceLabel_textColor
       
        buttonForViewMap.titleLabel?.font = UIFont.systemFontOfSize(10)
        buttonForViewMap.titleLabel?.textColor = Map_View_Text_Color
        
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

}