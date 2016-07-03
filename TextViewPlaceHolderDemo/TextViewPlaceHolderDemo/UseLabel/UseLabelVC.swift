//
//  UseLabelVC.swift
//  TextViewPlaceHolderDemo
//
//  Created by 也许、 on 16/7/3.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class UseLabelVC: UIViewController {

    let screenW = UIScreen.mainScreen().bounds.width
    let screenH = UIScreen.mainScreen().bounds.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        // 返回按钮
        let returnBtn = UIButton(frame: CGRectMake( 4, 20, 100, 35))
        returnBtn.setTitle("返回", forState: .Normal)
        returnBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        returnBtn.addTarget(self, action: #selector(self.goBack), forControlEvents: .TouchUpInside)
        self.view.addSubview(returnBtn)
        
        // textView
        let margin:CGFloat = 4
        let textView = LabelPlaceHolderTextView(frame: CGRectMake( margin, 60, screenW - margin * 2, screenH))
        textView.placeHolder = "占位符测试文字占位符测试文字占位符测试文字占位符测试文字占位符测试文字"
        self.view.addSubview(textView)
        
    }
    
    /**
        返回
     */
    func goBack() {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

}
