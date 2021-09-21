//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 김승찬 on 2021/09/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    @IBAction func tapCodePushButton(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") else { return }
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapCodePresentButton(_ sender: Any) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") else { return }
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
}

