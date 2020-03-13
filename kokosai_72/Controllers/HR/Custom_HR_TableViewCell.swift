//
//  Custom_HR_TableViewCell.swift
//  kokosai_72
//
//  Created by 加藤海宇 on 2020/03/09.
//  Copyright © 2020 加藤海宇. All rights reserved.
//

import UIKit

class Custom_HR_TableViewCell: UITableViewCell {
    /// イメージを表示するImageView
    @IBOutlet weak var myImageView: UIImageView!
    /// タイトルを表示するLabel
    @IBOutlet weak var myTitleLabel: UILabel!
    /// 説明を表示するLabel
    @IBOutlet weak var myDescriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
