//
//  CustomCellForAvailableProcedure.swift
//  mdsave
//
//  Created by Valodya on 11/2/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation

class CustomCellForAvailableProcedure: UICollectionViewCell {
    
    var panelName = UILabel(frame: CGRectMake(10, 5, 200, 40))
    var mdsavePrice = UILabel(frame: CGRectMake(230, 15, 60, 20))
    var plusOrMinusImage = UIImageView(frame: CGRectMake(0, 0, 20, 20))
    var button = UIButton(frame: CGRectMake(10, 200, 200, 30))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        mdsavePrice.font = UIFont.systemFontOfSize(12)
        panelName.numberOfLines = 2
        panelName.font = UIFont.systemFontOfSize(12)
        panelName.textColor = PanelName_TextColor
        mdsavePrice.textColor = PanelName_TextColor
        plusOrMinusImage.frame = CGRectMake(mdsavePrice.frame.origin.x + mdsavePrice.frame.size.width + 5, 15, 20, 20)
        contentView.addSubview(panelName)
        contentView.addSubview(mdsavePrice)
        contentView.addSubview(plusOrMinusImage)
        contentView.addSubview(button)
    }
    
   
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
 
    
   
}