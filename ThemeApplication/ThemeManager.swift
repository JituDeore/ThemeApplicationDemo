//
//  ThemeManager.swift
//  ThemeApplication
//
//  Created by Jitendra Deore on 28/08/18.
//  Copyright © 2018 Jitendra Deore. All rights reserved.
//

import Foundation

class ThemeManager {
    
    static let sharedThemeManager = ThemeManager()
    
    func toggleTheme() {
        let def = UserDefaults.standard
        def.set(!isNightMode(), forKey: "Theme")
    }
    
    func isNightMode() -> Bool {
        let def = UserDefaults.standard
         return def.bool(forKey: "Theme")
    }
}
