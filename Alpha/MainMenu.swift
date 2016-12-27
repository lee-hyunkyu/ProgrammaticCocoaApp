//
//  MainMenu.swift
//  Alpha
//
//  Created by Hyunkyu Lee on 12/27/16.
//  Copyright © 2016 Hyunkyu Lee. All rights reserved.
//

import Cocoa

class MainMenu: NSMenu {

    convenience init() {
        self.init(title: "")
        let mainAppMenuItem = NSMenuItem(title: "app", action: nil, keyEquivalent: "")
        self.addItem(mainAppMenuItem)
        let appMenu = NSMenu()
        mainAppMenuItem.submenu = appMenu
        appMenu.addItem(withTitle: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q")
        NSApplication.shared().mainMenu = self
    }
}
