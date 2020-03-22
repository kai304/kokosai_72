//
//  all_sub_ViewController.swift
//  kokosai_72
//
//  Created by 加藤海宇 on 2020/03/22.
//  Copyright © 2020 加藤海宇. All rights reserved.
//

import UIKit

class all_sub_ViewController: UIViewController {

    @IBOutlet weak var reception1: UIButton!
    @IBOutlet weak var reception2: UIButton!
    @IBOutlet weak var school_building: UIButton!
    @IBOutlet weak var small_gymnasium: UIButton!
    @IBOutlet weak var martial_arts_field: UIButton!
    @IBOutlet weak var kyudo_ground: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func reception1_tapped(_ sender: UIButton) {
        print("受付１")
    }
    
    @IBAction func reception2_tapped(_ sender: UIButton) {
        print("受付２")
    }
    @IBAction func school_building_tapped(_ sender: UIButton) {
        print("校舎")
    }
    @IBAction func small_gymnasium_tapped(_ sender: UIButton) {
        print("小体育館")
    }
    @IBAction func martial_arts_field_tapped(_ sender: UIButton) {
        print("武道場")
    }
    @IBAction func kyudo_ground_tapped(_ sender: UIButton) {
        print("弓道場")
    }
    
}
