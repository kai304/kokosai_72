//
//  VolunteerViewController.swift
//  kokosai_72
//
//  Created by 加藤海宇 on 2020/03/09.
//  Copyright © 2020 加藤海宇. All rights reserved.
//

import UIKit

class VolunteerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate{

    //MARK: - Variables
    @IBOutlet weak var searchBarField: UISearchBar!
    @IBOutlet weak var tableField: UITableView!
    var Appdelegate_conect = UIApplication.shared.delegate as! AppDelegate
    let nodate : String = ""
    /// 画像のファイル名
    var imageNames = [
        "演劇部",
        "應援團",
        "絵画研究同好会",
        "競技かるた部",
        "弓道部",
        "クイズ研究部",
        "くすんだ花緑青",
        "軽音楽部",
        "弦楽部",
        "写真部",
        "書道部",
        "数理科学部",
        "生物部",
        "ダンス部",
        "鉄道研究部",
        "天文部",
        "図書部",
        "謎製作団体",
        "ファイヤートーチ部",
        "麻雀愛好会",
        "漫画研究会",
        "AGH",
        "SSH"
    ]
    /// 画像のタイトル
    var imageTitles = [
        "演劇部",
        "応援団",
        "絵画研究同好会",
        "競技かるた部",
        "弓道部",
        "クイズ研究部",
        "くすんだ花緑青",
        "軽音楽部",
        "弦楽部",
        "写真部",
        "書道部",
        "数理科学部",
        "生物部",
        "ダンス部",
        "鉄道研究部",
        "天文部",
        "図書部",
        "謎製作団体",
        "ファイヤートーチ部",
        "麻雀愛好会",
        "漫画研究会",
        "AGH",
        "SSH"
    ]
    var displayimageTitles = [""]
    var displayimageNames = [""]
    // MARK: - view
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.titleView = searchBarField
        searchBarField.delegate = self
        searchBarField.showsCancelButton = true
        //プレースホルダの指定
        searchBarField.placeholder = "有志団体名(例:弓道部)"
        Volunteer_view()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillDisappear(_ animated: Bool) {
    searchBarField.resignFirstResponder()
    }
    //MARK: - Functions
    private func Volunteer_view() {
        displayimageTitles = imageTitles
        displayimageNames = imageNames
        tableField.reloadData()
    }
    
    //MARK: - TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return displayimageTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // セルを取得
            let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") as! Custom_Volunteer_TableViewCell
            
            // セルに値を設定
            cell.myImageView.image = UIImage(named: displayimageNames[indexPath.row])
            cell.myTitleLabel.text = displayimageTitles[indexPath.row]
            return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        Appdelegate_conect.selectedImage = UIImage(named: displayimageNames[indexPath.row] )
        self.performSegue(withIdentifier: "toVolunteer", sender: nil)
   
    }
    //MARK: -SearchBar
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        displayimageTitles = []
        displayimageNames = []
        var  index = 0
        print(displayimageTitles)
        print(displayimageNames)
        for imageTitle in imageTitles {
            if imageTitle.range(of: searchBar.text!) != nil {
                displayimageTitles.append(imageTitle)
                displayimageNames.append(imageNames[index])
            }
            index += 1
        }
        print(displayimageTitles)
        print(displayimageNames)
        tableField.reloadData()
        let searchtext = searchBar.text
        if searchtext == nodate {
            Volunteer_view()
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        displayimageTitles = []
        displayimageNames = []
        var  index = 0
        print(displayimageTitles)
        print(displayimageNames)
        for imageTitle in imageTitles {
            if imageTitle.range(of: searchBar.text!) != nil {
                displayimageTitles.append(imageTitle)
                displayimageNames.append(imageNames[index])
            }
            index += 1
        }
        print(displayimageTitles)
        print(displayimageNames)
        tableField.reloadData()
        let searchtext = searchBar.text
        if searchtext == nodate {
            Volunteer_view()
        }
    }
    
    // サーチバーのキャンセルボタンが押された時の処理
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        // サーチバーの中身を空にする
        searchBar.text = ""
        // キーボードをしまう
        searchBar.resignFirstResponder()
        Volunteer_view()
        }
    }

