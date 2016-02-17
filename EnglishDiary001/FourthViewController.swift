//
//  FourthViewController.swift
//  EnglishDiary001
//
//  Created by 三浦宏予 on 2016/02/16.
//  Copyright © 2016年 Hiroyo Miura. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    //気分をリストで表示できるようにする
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        //ファイルを読み込む
        var path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
        var jsondata = NSData(contentsOfFile: path!)
        
        //辞書データに変換
        let jsonDictionary = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as! NSDictionary
        
        //データを表示する
        //"関西":{"餅":"丸餅","醤油":"薄口","月見団子":"サトイモ型"}
        for(key, data) in jsonDictionary {
            var d1 = data["En"] as! String
            var d2 = data["Ja"] as! String
          
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
