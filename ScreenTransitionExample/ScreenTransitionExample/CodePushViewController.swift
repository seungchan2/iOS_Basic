//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 김승찬 on 2021/09/21.
//

import UIKit

class CodePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func tapBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    


}
