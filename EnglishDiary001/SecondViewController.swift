//
//  SecondViewController.swift
//  EnglishDiary001
//
//  Created by 三浦宏予 on 2016/02/16.
//  Copyright © 2016年 Hiroyo Miura. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var dataText001: UITextField!
    @IBOutlet weak var titleText001: UITextField!
    @IBOutlet weak var secImageView: UIImageView!
    @IBOutlet weak var secTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //★の内容をtextfildに表示させる
    
    @IBAction func tapStar(sender: UIButton) {
        secTextView.text = "リストからデータをもってくる"
    }
    
    
    @IBAction func tapSave(sender: UIButton) {
        
        //名前に代入して表示できるようにする
//        
//        var data001 = dataText001
//        var title001 = titleText001
//        var image001 = secImageView
//        var text001 = secTextView
        
        
        
    }
   
}

