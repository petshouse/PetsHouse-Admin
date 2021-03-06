//
//  SignInViewController.swift
//  PetsHouse_Admin
//
//  Created by 문지수 on 2021/04/05.
//

import UIKit

import RxSwift
import RxCocoa
import SnapKit
import Then

class SignInViewController: UIViewController {
    
    //UI
    private let logoView = UIImageView().then {
        $0.image = UIImage(named: "Logo with text")
    }
    private let emailLbl = UILabel().then {
        $0.text = "이메일"
        $0.textColor = .black
        $0.font = UIFont(name: "BMJUA", size: 15)
    }
    private let passwordLbl = UILabel().then {
        $0.text = "비밀번호"
        $0.textColor = .black
        $0.font = UIFont(name: "BMJUA", size: 15)
    }
    private let emailTxtField = UITextField().then {
        $0.placeholder = "email"
        $0.font = UIFont(name: "BMJUA", size: 25)
        $0.layer.cornerRadius = 15
        $0.backgroundColor = .white
    }
    private let passwordTxtField = UITextField().then {
        $0.placeholder = "password"
        $0.font = UIFont(name: "BMJUA", size: 25)
        $0.layer.cornerRadius = 25
        $0.backgroundColor = .white
    }
    private let signInBtn = UIButton().then {
        $0.clipsToBounds = true
        $0.backgroundColor = .mainColor
        $0.setTitle("로그인", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 15
    }
    private let signUpBtn = UIButton().then {
        $0.clipsToBounds = true
        $0.setTitle("계정이 없으신가요? 회원가입 하기", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.titleLabel?.font = UIFont(name: "BMJUA", size: 10)
    }
    
    
    //Constantraint
    func constraint() {
        logoView.snp.makeConstraints { (make) in
            make.centerX.equalTo(view)
            make.top.equalTo(view.frame.height/5)
            make.width.height.equalTo(220)
        }
        emailLbl.snp.makeConstraints { (make) in
            make.top.equalTo(logoView.snp.bottom).offset(80)
            make.centerX.equalTo(view)
            make.leading.equalTo(30)
            make.trailing.equalTo(-50)
        }
        emailTxtField.snp.makeConstraints { (make) in
            make.top.equalTo(emailLbl.snp.bottom).offset(20)
            make.centerX.equalTo(view)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
        }
        passwordLbl.snp.makeConstraints{ (make) in
            make.top.equalTo(emailTxtField.snp.bottom).offset(40)
            make.centerX.equalTo(view)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
        }
        passwordTxtField.snp.makeConstraints { (make) in
            make.top.equalTo(passwordLbl.snp.bottom).offset(20)
            make.centerX.equalTo(view)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
        }
        signInBtn.snp.makeConstraints { (make) in
            make.top.equalTo(passwordTxtField.snp.bottom).offset(30)
            make.centerX.equalTo(view)
            make.leading.equalTo(30)
            make.trailing.equalTo(-30)
        }
        signUpBtn.snp.makeConstraints { (make) in
            make.top.equalTo(signInBtn.snp.bottom).offset(10)
            make.centerX.equalTo(view)
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(logoView)
        view.addSubview(emailLbl)
        view.addSubview(emailTxtField)
        view.addSubview(passwordLbl)
        view.addSubview(passwordTxtField)
        view.addSubview(signInBtn)
        view.addSubview(signUpBtn)
        
        constraint()
    }
    

 

}
