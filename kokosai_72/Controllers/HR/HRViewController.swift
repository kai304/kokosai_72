//
//  HRViewController.swift
//  kokosai_72
//
//  Created by 加藤海宇 on 2020/03/09.
//  Copyright © 2020 加藤海宇. All rights reserved.
//

import UIKit

class HRViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    //MARK: - Variables
    @IBOutlet weak var searchBarField: UISearchBar!
    @IBOutlet weak var tableField: UITableView!
    @IBOutlet weak var segmentedswitch: UISegmentedControl!
    var Appdelegate_conect = UIApplication.shared.delegate as! AppDelegate
    let nodate : String = ""
    /// 画像のファイル名
    var HR1_imageNames = [
        "101",
        "102",
        "103",
        "104",
        "105",
        "106",
        "107",
        "108",
        "109"
    ]
    var HR2_imageNames = [
        "201",
        "202",
        "203",
        "204",
        "205",
        "206",
        "207",
        "208",
        "209"
    ]
    var HR3_imageNames = [
        "301",
        "302",
        "303",
        "304",
        "305",
        "306",
        "307",
        "308",
        "309"
    ]
    /// 画像のタイトル
    var HR1_imageTitles = [
        "101",
        "102",
        "103",
        "104",
        "105",
        "106",
        "107",
        "108",
        "109"
    ]
    var HR2_imageTitles = [
        "201",
        "202",
        "203",
        "204",
        "205",
        "206",
        "207",
        "208",
        "209"
    ]
    var HR3_imageTitles = [
        "301",
        "302",
        "303",
        "304",
        "305",
        "306",
        "307",
        "308",
        "309"
    ]
    /// 画像の説明
    var HR1_imageDescriptions = [
        "いとをかしきおかし",
        "１０２説明",
        "１０３説明",
        "１０４説明",
        "１０５説明",
        "１０６説明",
        "１０７説明",
        "１０８説明",
        "１０９説明",
    ]
    var HR2_imageDescriptions = [
        "２０１説明",
        "２０２説明",
        "２０３説明",
        "２０４説明",
        "２０５説明",
        "２０６説明",
        "２０７説明",
        "２０８説明",
        "２０９説明",
    ]
    var HR3_imageDescriptions = [
        "３０１説明",
        "３０２説明",
        "３０３説明",
        "３０４説明",
        "３０５説明",
        "３０６説明",
        "３０７説明",
        "３０８説明",
        "３０９説明",
    ]
    /// 画像のファイル名
    var imageNames = [
        "101",
        "102",
        "103",
        "104",
        "105",
        "106",
        "107",
        "108",
        "109",
        "201",
        "202",
        "203",
        "204",
        "205",
        "206",
        "207",
        "208",
        "209",
        "301",
        "302",
        "303",
        "304",
        "305",
        "306",
        "307",
        "308",
        "309"
    ]
    /// 画像のタイトル
    var imageTitles = [
        "101",
        "102",
        "103",
        "104",
        "105",
        "106",
        "107",
        "108",
        "109",
        "201",
        "202",
        "203",
        "204",
        "205",
        "206",
        "207",
        "208",
        "209",
        "301",
        "302",
        "303",
        "304",
        "305",
        "306",
        "307",
        "308",
        "309"
    ]
    /// 画像の説明
    var imageDescriptions = [
        "いとをかしきおかし",
        "１０２説明",
        "１０３説明",
        "１０４説明",
        "１０５説明",
        "１０６説明",
        "１０７説明",
        "１０８説明",
        "１０９説明",
        "２０１説明",
        "２０２説明",
        "２０３説明",
        "２０４説明",
        "２０５説明",
        "２０６説明",
        "２０７説明",
        "２０８説明",
        "２０９説明",
        "３０１説明",
        "３０２説明",
        "３０３説明",
        "３０４説明",
        "３０５説明",
        "３０６説明",
        "３０７説明",
        "３０８説明",
        "３０９説明",
    ]
    var displayimageTitles = [""]
    var displayimageNames = [""]
    var displayimageDescriptions = [""]
    // MARK: - view
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.titleView = searchBarField
        searchBarField.delegate = self
        searchBarField.showsCancelButton = true
        //プレースホルダの指定
        searchBarField.placeholder = "HR(例:101)"
        HR1_view()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillDisappear(_ animated: Bool) {
        searchBarField.resignFirstResponder()
    }
    //MARK: - Functions
    private func HR1_view() {
        displayimageTitles = HR1_imageTitles
        displayimageNames = HR1_imageNames
        displayimageDescriptions = HR1_imageDescriptions
        tableField.reloadData()
    }
    private func HR2_view() {
        displayimageTitles = HR2_imageTitles
        displayimageNames = HR2_imageNames
        displayimageDescriptions = HR2_imageDescriptions
        tableField.reloadData()
    }
    private func HR3_view() {
        displayimageTitles = HR3_imageTitles
        displayimageNames = HR3_imageNames
        displayimageDescriptions = HR3_imageDescriptions
        tableField.reloadData()
    }
    //MARK: - Actions
    @IBAction func segmentswitchtapped(_ sender: UISegmentedControl) {
        switch segmentedswitch.selectedSegmentIndex{
        case 0:
            HR1_view()
        case 1:
            HR2_view()
        case 2:
            HR3_view()
        default:
            break
        }
    }
    /// セルの個数を指定するデリゲートメソッド（必須）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return displayimageTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // セルを取得
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") as! Custom_HR_TableViewCell
            
            // セルに値を設定
            cell.myImageView.image = UIImage(named: displayimageNames[indexPath.row])
            cell.myTitleLabel.text = displayimageTitles[indexPath.row]
            cell.myDescriptionLabel.text = displayimageDescriptions[indexPath.row]
            return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        Appdelegate_conect.selectedImage = UIImage(named: displayimageNames[indexPath.row] )
        self.performSegue(withIdentifier: "toHRinfo", sender: nil)
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        displayimageTitles = []
        displayimageNames = []
        displayimageDescriptions = []
        segmentedswitch.isHidden = true
        var  index = 0
        print(displayimageTitles)
        print(displayimageNames)
        print(displayimageDescriptions)
        for imageTitle in imageTitles {
            if imageTitle.range(of: searchBar.text!) != nil {
                displayimageTitles.append(imageTitle)
                displayimageNames.append(imageNames[index])
                displayimageDescriptions.append(imageDescriptions[index])
            }
            index += 1
            
        }
        print(displayimageTitles)
        print(displayimageNames)
        print(displayimageDescriptions)
        tableField.reloadData()
        let searchtext = searchBar.text
        if searchtext == nodate {
            segmentedswitch.isHidden = false
            switch segmentedswitch.selectedSegmentIndex {
            case 0:
                HR1_view()
            case 1:
                HR2_view()
            case 2:
                HR3_view()
            default:
                break
            }
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        displayimageTitles = []
        displayimageNames = []
        displayimageDescriptions = []
        segmentedswitch.isHidden = true
        var  index = 0
        print(displayimageTitles)
        print(displayimageNames)
        print(displayimageDescriptions)
        for imageTitle in imageTitles {
            if imageTitle.range(of: searchBar.text!) != nil {
                displayimageTitles.append(imageTitle)
                displayimageNames.append(imageNames[index])
                displayimageDescriptions.append(imageDescriptions[index])
            }
            index += 1
        }
        print(displayimageTitles)
        print(displayimageNames)
        print(displayimageDescriptions)
        tableField.reloadData()
        let searchtext = searchBar.text
        if searchtext == nodate {
            segmentedswitch.isHidden = false
            switch segmentedswitch.selectedSegmentIndex {
            case 0:
                HR1_view()
            case 1:
                HR2_view()
            case 2:
                HR3_view()
            default:
                break
            }
        }
    }
    
    // サーチバーのキャンセルボタンが押された時の処理
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        // サーチバーの中身を空にする
        searchBar.text = ""
        // キーボードをしまう
        searchBar.resignFirstResponder()
        segmentedswitch.isHidden = false
        switch segmentedswitch.selectedSegmentIndex {
        case 0:
            HR1_view()
        case 1:
            HR2_view()
        case 2:
            HR3_view()
        default:
            break
        }
    }

 
    
}
