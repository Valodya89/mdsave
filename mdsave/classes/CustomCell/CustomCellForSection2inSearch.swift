//
//  CustomCellForSection2inSearch.swift
//  mdsave
//
//  Created by IOS Developer on 10/28/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation


class CustomCellForSection2inSearch: BaseUITableViewCell {
    
    
    var docImage = UIImageView(frame: CGRectMake(20, -3, 60, 60))
    var hospitalLogo = UIImageView(frame: CGRectMake(240, 10, 90, 35))
    
    var purchaseLabel = UILabel(frame: CGRectMake(80, 7, 170, 10))
    var purchaseInfoLabel = UILabel(frame: CGRectMake(90, 10, 150, 50))
    var viewForFooter = BaseUIView(frame: CGRectMake(0, 5, 340, 46))
    
    
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = Cell_Color
        viewForFooter.backgroundColor = UIColor.whiteColor()
        contentView.addSubview(viewForFooter)
        
        contentView.addSubview(purchaseLabel)
        contentView.addSubview(purchaseInfoLabel)
        
        contentView.addSubview(docImage)
        contentView.addSubview(hospitalLogo)
       
        
        
        purchaseLabel.font = UIFont.systemFontOfSize(10)
        purchaseInfoLabel.font = UIFont.systemFontOfSize(10)
        
        purchaseInfoLabel.numberOfLines = 2
        
        purchaseLabel.textAlignment = NSTextAlignment.Center
        purchaseInfoLabel.textAlignment = NSTextAlignment.Center
        
       
        purchaseLabel.textColor =  hospitalNameLabel_textColor
        
             
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}