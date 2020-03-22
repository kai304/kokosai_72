//
//  HomeViewController.swift
//  kokosai_72
//
//  Created by 加藤海宇 on 2020/03/10.
//  Copyright © 2020 加藤海宇. All rights reserved.
//

import UIKit
import SafariServices

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
    @IBAction func Questionnaire(_ sender: UIButton) {
        let url = "https://docs.google.com/forms/d/e/1FAIpQLSd2UPClIlE8v_5EdhXo3wJXsJUa6s4_GDNNES6iwQHdUIluEQ/viewform?usp=pp_url"
        let safariVC = SFSafariViewController(url: NSURL(string: url)! as URL)
        present(safariVC, animated: true, completion: nil)
    }
    
    @IBAction func Advertisement(_ sender: Any) {
        let url = "https://www.google.com/"
        let safariVC = SFSafariViewController(url: NSURL(string: url)! as URL)
        present(safariVC, animated: true, completion: nil)
    }
}
