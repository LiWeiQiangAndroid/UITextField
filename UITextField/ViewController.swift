//
//  ViewController.swift
//  UITextField
//
//  Created by 李维强 on 2018/9/11.
//  Copyright © 2018 李维强. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let textfield = UITextField(frame: CGRect(x: 20, y: 30, width: 220, height: 30))

        textfield.borderStyle = UITextBorderStyle.roundedRect
        //设置文本对齐模式
        textfield.textAlignment = NSTextAlignment.center
        //设置输入文字颜色
        textfield.textColor = UIColor.red
        //设置提示文字
        textfield.placeholder = "请输入手机号码"
        
        let imageview = UIImageView(image: UIImage(named: "image"))
        imageview.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        //默认不显示
        textfield.leftView = imageview
        
        textfield.leftViewMode = UITextFieldViewMode.always
        //显示清除按钮
        textfield.clearButtonMode = UITextFieldViewMode.always
        
        textfield.delegate = self
        self.view.addSubview(textfield)
        
    }
    
    
    //在编辑开始时
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (textField.text?.characters.count)! >= 11 {
            return false
        }
        if string.characters.first! <= "9" && string.characters.first! >= "0"{
            return true
        }else{
            return false
        }
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

