//
//  Volunteer_info_ViewController.swift
//  kokosai_72
//
//  Created by 加藤海宇 on 2020/03/16.
//  Copyright © 2020 加藤海宇. All rights reserved.
//

import UIKit

class Volunteer_info_ViewController: UIViewController {
    var Appdelegate_conect = UIApplication.shared.delegate as! AppDelegate
    //MARK: - Variables
    @IBOutlet weak var Volunteer_Name: UINavigationItem!
    @IBOutlet weak var Volunteer_Image: UIImageView!
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
        Volunteer_Image.image = Appdelegate_conect.selectedImage
        switch Appdelegate_conect.selectedImage {
        case UIImage(named: "演劇部"):
            Volunteer_Name.title = "演劇部"
        case UIImage(named: "應援團"):
            Volunteer_Name.title = "應援團"
        case UIImage(named: "絵画研究同好会"):
            Volunteer_Name.title = "絵画研究同好会"
        case UIImage(named: "競技かるた部"):
            Volunteer_Name.title = "競技かるた部"
        case UIImage(named: "弓道部"):
            Volunteer_Name.title = "弓道部"
        case UIImage(named: "クイズ研究部"):
            Volunteer_Name.title = "クイズ研究部"
        case UIImage(named: "くすんだ花緑青"):
            Volunteer_Name.title = "くすんだ花緑青"
        case UIImage(named: "軽音楽部"):
            Volunteer_Name.title = "軽音楽部"
        case UIImage(named: "弦楽部"):
            Volunteer_Name.title = "弦楽部"
        case UIImage(named: "写真部"):
            Volunteer_Name.title = "写真部"
        case UIImage(named: "書道部"):
            Volunteer_Name.title = "書道部"
        case UIImage(named: "数理科学部"):
            Volunteer_Name.title = "数理科学部"
        case UIImage(named: "生物部"):
            Volunteer_Name.title = "生物部"
        case UIImage(named: "ダンス部"):
            Volunteer_Name.title = "ダンス部"
        case UIImage(named: "鉄道研究部"):
            Volunteer_Name.title = "鉄道研究部"
        case UIImage(named: "天文部"):
            Volunteer_Name.title = "天文部"
        case UIImage(named: "図書部"):
            Volunteer_Name.title = "図書部"
        case UIImage(named: "謎製作団体"):
            Volunteer_Name.title = "謎製作団体"
        case UIImage(named: "ファイヤートーチ部"):
            Volunteer_Name.title = "ファイヤートーチ部"
        case UIImage(named: "麻雀愛好会"):
            Volunteer_Name.title = "麻雀愛好会"
        case UIImage(named: "漫画研究会"):
            Volunteer_Name.title = "漫画研究会"
        case UIImage(named: "AGH"):
            Volunteer_Name.title = "AGH"
        case UIImage(named: "SSH"):
            Volunteer_Name.title = "SSH"
        default:
            break
        }
    }

}
