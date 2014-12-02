//
//  CustomHelpQuestionCell.swift
//  mdsave
//
//  Created by IOS Developer on 11/5/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation


class CustomHelpQuestionCell: UICollectionViewCell {
    
    var questionLabel = UILabel(frame: CGRectMake(10, 10, 270, 30))
    var plusOrMinusButton = UIButton(frame: CGRectMake(290, 10, 20, 20))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        questionLabel.textColor = hospitalNameLabel_textColor
        questionLabel.font = UIFont.systemFontOfSize(13)
        
        contentView.addSubview(questionLabel)
        contentView.addSubview(plusOrMinusButton)
       
    }
    
    
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    

    
}