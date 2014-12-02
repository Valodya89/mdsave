//
//  BaseViewController.swift
//  mdsave
//
//  Created by IOS Developer on 10/22/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation


class BaseViewController: UIViewController {
    
    func drawCustomLine(point:CGPoint ,size:CGSize , viewForAddSubview:UIView){
        let imageSize = size
        let imageView = UIImageView(frame: CGRect(origin: point, size: imageSize))
        viewForAddSubview.addSubview(imageView)
        let image = drawCustomImage(imageSize)
        imageView.image = image
    }
    
    func drawCustomImage(size: CGSize) -> UIImage {
        // Setup our context
        let bounds = CGRect(origin: CGPoint.zeroPoint, size: size)
        let opaque = false
        let scale: CGFloat = 0
        UIGraphicsBeginImageContextWithOptions(size, opaque, scale)
        let context = UIGraphicsGetCurrentContext()
        
        // Setup complete, do drawing here
        CGContextSetStrokeColorWithColor(context, LineImage_BackgroundColor.CGColor)
        CGContextSetLineWidth(context, 1.0)
        
        CGContextStrokeRect(context, bounds)
        
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, CGRectGetMinX(bounds), CGRectGetMinY(bounds))
        CGContextAddLineToPoint(context, CGRectGetMaxX(bounds), CGRectGetMaxY(bounds))
        CGContextMoveToPoint(context, CGRectGetMaxX(bounds), CGRectGetMinY(bounds))
        CGContextAddLineToPoint(context, CGRectGetMinX(bounds), CGRectGetMaxY(bounds))
        CGContextStrokePath(context)
        
        // Drawing complete, retrieve the finished image and cleanup
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

}