//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 西方健太郎 on 2020/12/31.
//  Copyright © 2020 idea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!

        override func viewDidLoad() {
            super.viewDidLoad()
    //プレースホルダを設定

        inputField.placeholder = "ここに記入"

        // キーボードタイプを指定

        inputField.keyboardType = .default

        // 枠線のスタイルを設定

        inputField.borderStyle = .roundedRect

        // 改行ボタンの種類を設定記入して
    }

        // segueが動作することをViewControllerに通知するメソッド
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

            // segueのIDを確認して特定のsegueのときのみ動作させる
            if segue.identifier == "toBViewController" {
                // 2. 遷移先のViewControllerを取得
                let next = segue.destination as? B_ViewController
                // 3. １で用意した遷移先の変数に値を渡す
                next?.outputValue = self.inputField.text
            
            }
        }

        @IBAction func tapTransitionButton(_ sender: Any) {
            // 4. 画面遷移実行
            performSegue(withIdentifier: "toBViewController", sender: nil)
        }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
}
