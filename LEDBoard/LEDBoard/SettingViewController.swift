//
//  SettingViewController.swift
//  LEDBoard
//
//  Created by 김승찬 on 2021/09/21.
//

import UIKit

    // 데이터 전달을 위한 Protocol
protocol LEDBoardSettingDelegate: AnyObject {
    // 설정값 전달하는 함수
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingViewController: UIViewController {

    weak var delegate: LEDBoardSettingDelegate?
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor = .black
    var ledText: String?
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        
    }
    // 전달받은 데이터로 뷰 초기화
    private func configureView() {
        if let ledText = self.ledText {
            self.textField.text = ledText
        }
        self.changeTextColor(color: self.textColor)
        self.changeBackgroundColor(color: self.backgroundColor)
    }
    
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == self.yellowButton {
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        } else if sender == self.purpleButton {
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        } else {
            self.changeTextColor(color: .green)
            self.textColor = .green
        }
    }
    
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == self.blackButton {
            changeBackgroundColor(color: .black)
            backgroundColor = .black
        } else if sender == self.blueButton {
            changeBackgroundColor(color: .blue)
            backgroundColor = .blue
        } else {
            changeBackgroundColor(color: .orange)
            backgroundColor = .orange
        }
    }
    
    @IBAction func tapSaveButton(_ sender: Any) {
        self.delegate?.changedSetting(text: self.textField.text,
                                      textColor: self.textColor,
                                      backgroundColor: self.backgroundColor
        )
        self.navigationController?.popViewController(animated: true)
    }
    
    // 버튼 클릭시에 알파값 조정 -> 삼항연산자 사용
    private func changeTextColor(color: UIColor) {
        self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.2
        self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.2
        self.greenButton.alpha = color == UIColor.green ? 1 : 0.2
    }
    
    private func changeBackgroundColor(color: UIColor) {
        self.blackButton.alpha = color == UIColor.black ? 1: 0.2
        self.blueButton.alpha = color == UIColor.blue ? 1: 0.2
        self.orangeButton.alpha = color == UIColor.orange ? 1: 0.2
    }
}

