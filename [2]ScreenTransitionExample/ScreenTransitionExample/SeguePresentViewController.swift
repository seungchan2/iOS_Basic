//
//  SeguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 김승찬 on 2021/09/21.
//

import UIKit

class SeguePresentViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tapBackButton(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
