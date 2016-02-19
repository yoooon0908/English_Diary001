//
//  SecondViewController.swift
//  EnglishDiary001
//
//  Created by 三浦宏予 on 2016/02/16.
//  Copyright © 2016年 Hiroyo Miura. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    
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
    
    
    @IBAction func tapPhoto(sender: UIButton) {
        
        // フォトライブラリが使用可能か？
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {
            
            // フォトライブラリの選択画面を表示
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            self.presentViewController(picker, animated: true, completion: nil)
        }
    }
    
    // 写真選択時に呼ばれる
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        // 選択した画像を取得
        if info[UIImagePickerControllerOriginalImage] != nil {
            if let photo:UIImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
                
                // ImageViewにその画像を設定
                secImageView.image = photo
            }
        }
        
        picker.dismissViewControllerAnimated(true, completion: nil)
    
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

