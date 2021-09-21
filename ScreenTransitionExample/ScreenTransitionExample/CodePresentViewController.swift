//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 김승찬 on 2021/09/21.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}
class CodePresentViewController: UIViewController {

    var name: String?
    // weak 를 사용하지 않으면
    // 강환 순환 참조가 생겨 메모리 누수가 생길 수도 있음
    weak var delegate: SendDataDelegate?
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    
    @IBAction func tapBackButton(_ sender: Any) {
        self.delegate?.sendData(name: "seungchan")
        self.dismiss(animated: true, completion: nil)
    }
    
}
