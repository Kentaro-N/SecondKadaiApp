//
//  B_ViewController.swift
//  SecondKadaiApp
//
//  Created by 西方健太郎 on 2020/12/31.
//  Copyright © 2020 idea. All rights reserved.
//

import UIKit

class B_ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!

        // 1. 遷移先に渡したい値を格納する変数を用意する
        var outputValue : String!

        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            outputLabel.text = "こんにちは、" + outputValue + "さん"
            
        }
    }
