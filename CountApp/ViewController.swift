//
//  ViewController.swift
//  CountApp
//
//  Created by 佐山絢 on 2018/05/07.
//  Copyright © 2018年 佐山絢. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()
    let rightBtn = UIButton()
    let leftBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "CountApp"
        
        let viewWidth = self.view.bounds.width
        let viewHeight = self.view.bounds.height
        
        
        label.frame = CGRect(x: viewWidth / 4, y: viewHeight / 2 - 50, width: viewWidth / 2, height: 50)
        label.text = "0"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30)
        self.view.addSubview(label)
        
        rightBtn.frame = CGRect(x: viewWidth - 170, y: viewHeight / 2, width: 150, height: 150)
        rightBtn.backgroundColor = UIColor.blue
        rightBtn.layer.cornerRadius = 75.0
        rightBtn.setTitle("Up", for: .normal)
        rightBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        rightBtn.addTarget(self, action: #selector(self.countUp), for: .touchUpInside)
        self.view.addSubview(rightBtn)
        
        leftBtn.frame = CGRect(x: 20, y: viewHeight / 2, width: 150, height: 150)
        leftBtn.backgroundColor = UIColor.red
        leftBtn.layer.cornerRadius = 75.0
        leftBtn.setTitle("Down", for: .normal)
        leftBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        leftBtn.addTarget(self, action: #selector(self.countDown), for: .touchUpInside)
        self.view.addSubview(leftBtn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func countUp(){
        let str = label.text!
        let num = Int(str)! + 1
        
        label.text = String(num)
    }
    
    @objc func countDown(){
        let str = label.text!
        let num = Int(str)! - 1
        
        label.text = String(num)
    }


}

