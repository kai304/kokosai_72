//
//  HR_info_ViewController.swift
//  kokosai_72
//
//  Created by 加藤海宇 on 2020/03/15.
//  Copyright © 2020 加藤海宇. All rights reserved.
//

import UIKit

class HR_info_ViewController: UIViewController {
    var Appdelegate_conect = UIApplication.shared.delegate as! AppDelegate
    //MARK: - Variables
    @IBOutlet weak var HR_Name: UINavigationItem!
    @IBOutlet weak var HR_Image: UIImageView!

    // MARK: - view
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Set
    override func viewWillAppear(_ animated: Bool) {
        HR_Image.image = Appdelegate_conect.selectedImage
        switch Appdelegate_conect.selectedImage {
        case UIImage(named: "101"):
            HR_Name.title = "101"
        case UIImage(named: "102"):
            HR_Name.title = "102"
        case UIImage(named: "103"):
            HR_Name.title = "103"
        case UIImage(named: "104"):
            HR_Name.title = "104"
        case UIImage(named: "105"):
            HR_Name.title = "105"
        case UIImage(named: "106"):
            HR_Name.title = "106"
        case UIImage(named: "107"):
            HR_Name.title = "107"
        case UIImage(named: "108"):
            HR_Name.title = "108"
        case UIImage(named: "109"):
            HR_Name.title = "109"
        case UIImage(named: "201"):
            HR_Name.title = "201"
        case UIImage(named: "202"):
            HR_Name.title = "202"
        case UIImage(named: "203"):
            HR_Name.title = "203"
        case UIImage(named: "204"):
            HR_Name.title = "204"
        case UIImage(named: "205"):
            HR_Name.title = "205"
        case UIImage(named: "206"):
            HR_Name.title = "206"
        case UIImage(named: "207"):
            HR_Name.title = "207"
        case UIImage(named: "208"):
            HR_Name.title = "208"
        case UIImage(named: "209"):
            HR_Name.title = "209"
        case UIImage(named: "301"):
            HR_Name.title = "301"
        case UIImage(named: "302"):
            HR_Name.title = "302"
        case UIImage(named: "303"):
            HR_Name.title = "303"
        case UIImage(named: "304"):
            HR_Name.title = "304"
        case UIImage(named: "305"):
            HR_Name.title = "305"
        case UIImage(named: "306"):
            HR_Name.title = "306"
        case UIImage(named: "307"):
            HR_Name.title = "307"
        case UIImage(named: "308"):
            HR_Name.title = "308"
        case UIImage(named: "309"):
            HR_Name.title = "309"
        default:
            break
        }
    }
    //MARK: - Functions
    private func _101(){
        
    }

}
