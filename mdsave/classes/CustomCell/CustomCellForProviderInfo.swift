//
//  CustomCellForProviderInfo.swift
//  mdsave
//
//  Created by Armen on 10/31/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation


class CustomCellForProviderInfo: UITableViewCell {
    
    
    var docImage = UIImageView(frame: CGRectMake(10, 10, 60, 75))
    var docName = UILabel(frame: CGRectMake(80, 10, 200, 20))
    var docProfession = UILabel(frame: CGRectMake(80, 30, 200, 20))
    
    var addToListButton = UIButton(frame: CGRectMake(200, 55, 110, 35))
    var writeReviewButton = UIButton() 
    
    var docInfoName = UILabel(frame: CGRectMake(10, 5, 300, 20))
    var docInfo = UILabel(frame: CGRectMake(0, 0, 300, 20))
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        docInfo.numberOfLines = 0
        docInfo.preferredMaxLayoutWidth = 320
        docInfo.lineBreakMode = NSLineBreakMode.ByWordWrapping
        
        docInfo.sizeToFit()
        
        contentView.backgroundColor = Cell_Color
        writeReviewButton.frame = CGRectMake(20, docInfo.frame.origin.y + 10, 280, 50)
        docInfo.frame = CGRectMake(10,20, 300, 50)
        docInfoName.font = UIFont.systemFontOfSize(12)
        docInfo.font = UIFont.systemFontOfSize(12)
        docInfo.textAlignment = NSTextAlignment.Left
        docInfoName.textAlignment = NSTextAlignment.Left
        
        contentView.addSubview(docImage)
        contentView.addSubview(docName)
        contentView.addSubview(docProfession)
        contentView.addSubview(addToListButton)
        contentView.addSubview(writeReviewButton)
        contentView.addSubview(docInfo)
        contentView.addSubview(docInfoName)
        
        docName.font = UIFont.boldSystemFontOfSize(14)
        docProfession.font = UIFont.systemFontOfSize(12)
        
        
        

        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

    
}