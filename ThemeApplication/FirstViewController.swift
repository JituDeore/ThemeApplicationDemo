//
//  FirstViewController.swift
//  ThemeApplication
//
//  Created by Jitendra Deore on 28/08/18.
//  Copyright © 2018 Jitendra Deore. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var themeSwitch: UISwitch!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    @IBAction func UpdateTheme(_ sender: Any) {
        ThemeManager.sharedThemeManager.toggleTheme()
        updateTheme()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        themeSwitch.setOn(ThemeManager.sharedThemeManager.isNightMode(), animated: false)
    }
    
    func updateTheme() {
        self.view.backgroundColor = DHColor.appSubviewBackground.color
        self.titleLabel.textColor = DHColor.appText.color
        self.subTitleLabel.textColor = DHColor.appSubText.color
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTheme()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

