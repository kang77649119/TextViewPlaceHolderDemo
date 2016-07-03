//
//  LabelPlaceHolderTextView.swift
//  TextViewPlaceHolderDemo
//
//  Created by 也许、 on 16/7/3.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class LabelPlaceHolderTextView: UITextView {
    
    // 占位Label
    var placeHolderLabel:UILabel? = nil
    
    // 占位符文字
    var placeHolder:NSString = NSString() {
        
        didSet {
        
            // 垂直方向上永远有弹簧效果
            self.alwaysBounceVertical = true
            
            let label = UILabel(frame: CGRectMake( 5, 7, self.frame.width - 10, self.frame.height))
            label.text = self.placeHolder as String
            label.numberOfLines = 0
            label.textColor = UIColor.grayColor()
            label.sizeToFit()
            self.addSubview(label)
            
            self.placeHolderLabel = label
            
        }
    
    }
    
    override var frame: CGRect {
    
        didSet {
            
            NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.textChange), name: UITextViewTextDidChangeNotification, object: nil)
        
        }
        
    }
    
    /**
        监听文字改变
     */
    func textChange() {
        self.setNeedsDisplay()
    }
    

    override func drawRect(rect: CGRect) {
        
        self.font = UIFont.systemFontOfSize(15)
        self.placeHolderLabel?.hidden = self.hasText()
        
    }
    

}
