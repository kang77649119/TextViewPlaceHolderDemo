//
//  PlaceHolderTextView.swift
//  TextViewPlaceHolderDemo
//
//  Created by 也许、 on 16/7/3.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class PlaceHolderTextView: UITextView {
    
    var placeHolder:NSString = NSString() {
    
        didSet {
            self.setNeedsDisplay()
        }
        
    }
    
    override var frame: CGRect {
        
        didSet {
            
            self.alwaysBounceVertical = true
            
            NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.textChange), name: UITextViewTextDidChangeNotification, object: nil)
            
        }
        
    }
    
    /**
        监听输入文字的变化
     */
    func textChange() {
        self.setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        
        // 设置输入文字的大小
        self.font = UIFont.systemFontOfSize(15)
        
        if self.hasText() { return }
        
        // 设置占位符文字的属性
        let attr = [ NSForegroundColorAttributeName : UIColor.grayColor() , NSFontAttributeName : UIFont.systemFontOfSize(15) ]
        
        // 设置占位符文字的位置
        var textViewRect = rect
        textViewRect.origin.x = 4
        textViewRect.origin.y = 7
        textViewRect.size.width -= (2 * textViewRect.origin.x)
        
        self.placeHolder.drawInRect( textViewRect, withAttributes: attr)
        
    }
    

}
