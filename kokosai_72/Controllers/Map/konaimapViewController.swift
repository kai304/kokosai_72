//
//  konaimapViewController.swift
//  kokosai_72
//
//  Created by 加藤海宇 on 2020/03/11.
//  Copyright © 2020 加藤海宇. All rights reserved.
//

import UIKit

class konaimapViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        let screenWidth = UIScreen.main.bounds.width
        self.tabBar.frame = CGRect(x: 0.0, y: 20.0, width: screenWidth, height: tabBar.frame.size.height)
    }
}
