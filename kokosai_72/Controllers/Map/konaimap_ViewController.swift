//
//  konaimap_ViewController.swift
//  kokosai_72
//
//  Created by 加藤海宇 on 2020/03/22.
//  Copyright © 2020 加藤海宇. All rights reserved.
//

import UIKit

class konaimap_ViewController: UIViewController {

    @IBOutlet weak var first_floor: UIView!
    @IBOutlet weak var second_floor: UIView!
    @IBOutlet weak var third_floor: UIView!
    @IBOutlet weak var all: UIView!
    @IBOutlet weak var first_floor_button: UIButton!
    @IBOutlet weak var second_floor_button: UIButton!
    @IBOutlet weak var third_floor_button: UIButton!
    @IBOutlet weak var all_button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        reset()
        set_1F()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // MARK: - functions
    private func reset() {
        first_floor.isHidden = true
        second_floor.isHidden = true
        third_floor.isHidden = true
        all.isHidden = true
        first_floor_button.isEnabled = true
        second_floor_button.isEnabled = true
        third_floor_button.isEnabled = true
        all_button.isEnabled = true
    }
    private func set_1F() {
        first_floor.isHidden = false
        second_floor.isHidden = true
        third_floor.isHidden = true
        all.isHidden = true
        first_floor_button.isEnabled = false
    }
    private func set_2F() {
        first_floor.isHidden = true
        second_floor.isHidden = false
        third_floor.isHidden = true
        all.isHidden = true
        second_floor_button.isEnabled = false
    }
    private func set_3F() {
        first_floor.isHidden = true
        second_floor.isHidden = true
        third_floor.isHidden = false
        all.isHidden = true
        third_floor_button.isEnabled = false
    }
    private func set_all(){
        first_floor.isHidden = true
        second_floor.isHidden = true
        third_floor.isHidden = true
        all.isHidden = false
        all_button.isEnabled = false
    }
    // MARK: - change_floor
    @IBAction func first_floor_tapped(_ sender: UIButton) {
        reset()
        set_1F()
    }
    
    @IBAction func second_floor_tapped(_ sender: UIButton) {
        reset()
        set_2F()
    }
    
    @IBAction func third_floor_tapped(_ sender: UIButton) {
        reset()
        set_3F()
    }
    
    @IBAction func all_tapped(_ sender: UIButton) {
        reset()
        set_all()
    }
    
    
}
