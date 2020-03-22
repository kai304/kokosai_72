//
//  all_ViewController.swift
//  kokosai_72
//
//  Created by 加藤海宇 on 2020/03/22.
//  Copyright © 2020 加藤海宇. All rights reserved.
//

import UIKit

class all_ViewController: UIViewController, UIScrollViewDelegate {


    @IBOutlet weak var basicview: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.delegate = self
        
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
            return basicview
    }
    



}
