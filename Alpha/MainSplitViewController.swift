//
//  MainSplitViewController.swift
//  Alpha
//
//  Created by Hyunkyu Lee on 12/23/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//

import Cocoa

class MainSplitViewController: NSSplitViewController {

    let leftView    = CustomView(frame: NSRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 100, height: 100)))
    let rightView   = RightView(frame: NSRect(origin: CGPoint(x: 100, y: 0), size: CGSize(width: 100, height: 100)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftVC = NSViewController()
        let rightVC = NSViewController()
        
        let button = NSButton(title: "Hello", target: nil, action: nil)
        leftView.addSubview(button)
        
        leftView.alphaValue = 1;
        rightView.alphaValue = 1;
        leftView.makeBackingLayer()
        rightView.makeBackingLayer()
        
        leftVC.view = leftView
        rightVC.view = rightView
        
        let leftSVI = NSSplitViewItem(sidebarWithViewController: leftVC)
        let rightSVI = NSSplitViewItem(viewController: rightVC)
        
        
        addSplitViewItem(leftSVI)
        addSplitViewItem(rightSVI)
        
        splitView.dividerStyle = NSSplitViewDividerStyle.thin

        splitView.adjustSubviews()
        
        print(splitView.subviews)
        
        // NSLayoutConstraints
        addConstraints()
    }
    
    private func addConstraints() {
        let leftSize = NSLayoutConstraint(item: leftView, attribute: .width, relatedBy: .greaterThanOrEqual, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: splitView.frame.width*0.3)
        NSLayoutConstraint.activate([leftSize])
    }
    
}
