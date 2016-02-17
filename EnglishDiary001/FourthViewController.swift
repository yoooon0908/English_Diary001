//
//  FourthViewController.swift
//  EnglishDiary001
//
//  Created by 三浦宏予 on 2016/02/16.
//  Copyright © 2016年 Hiroyo Miura. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var foTableView: UITableView!
    //気分をリストで表示できるようにする
    //辞書＋辞書
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(animated: Bool) {
        //json.txtファイルを読み込んで
        var path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
        var jsondata = NSData(contentsOfFile: path!)
        
        
        let jsonDictionaray = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as! NSDictionary
        
      
        for (key,data) in jsonDictionaray {
            var d1 = data["餅"] as! String
            var d2 = data["醤油"] as! String
            var d3 = data["月見団子"] as! String
            print("キー[\(key)] 餅\(d1)")
            print("キー[\(key)] 醤油\(d2)")
            print("キー[\(key)] 月見団子\(d3)")
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
