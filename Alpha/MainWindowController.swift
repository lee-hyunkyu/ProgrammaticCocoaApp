//
//  MainWindowController.swift
//  Alpha
//
//  Created by Hyunkyu Lee on 12/24/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    convenience init() {
        self.init(window: NSWindow(contentViewController: MainSplitViewController()))
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
    
        window?.titlebarAppearsTransparent = true;
        window?.titleVisibility = .hidden;
    }

}
