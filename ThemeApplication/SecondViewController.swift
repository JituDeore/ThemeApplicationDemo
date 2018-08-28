//
//  SecondViewController.swift
//  ThemeApplication
//
//  Created by Jitendra Deore on 28/08/18.
//  Copyright © 2018 Jitendra Deore. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = DHColor.appSubviewBackground.color
        self.titleLabel.textColor = DHColor.appText.color
        self.subTitleLabel.textColor = DHColor.appSubText.color
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

