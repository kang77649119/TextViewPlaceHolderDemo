//
//  ViewController.swift
//  TextViewPlaceHolderDemo
//
//  Created by 也许、 on 16/7/3.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        // 初始化按钮
        initBtn()
        
    }
    
    /**
        初始化按钮
     */
    func initBtn() {
        
        let btn1 = UIButton(frame: CGRectMake( 10, 100, 300, 35))
        btn1.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.5)
        btn1.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn1.setTitle("使用drawRect创建占位符文字效果", forState: .Normal)
        btn1.addTarget(self, action: #selector(self.useDrawRect), forControlEvents: .TouchUpInside)
        self.view.addSubview(btn1)
        
        let btn2 = UIButton(frame: CGRectMake( 10, 150, 300, 35))
        btn2.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.5)
        btn2.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn2.setTitle("使用UILabel创建占位符文字效果", forState: .Normal)
        btn2.addTarget(self, action: #selector(self.useLabel), forControlEvents: .TouchUpInside)
        self.view.addSubview(btn2)
        
    }
    
    /**
        使用drawRect方式
     */
    func useDrawRect() {
    
        let targetVC = UseDrawRectVC()
        self.presentViewController(targetVC, animated: true, completion: nil)
    }
    
    /**
        使用label方式
     */
    func useLabel() {
        
        let targetVC = UseLabelVC()
        self.presentViewController(targetVC, animated: true, completion: nil)
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

