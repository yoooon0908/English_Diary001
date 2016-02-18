//
//  FourthViewController.swift
//  EnglishDiary001
//
//  Created by 三浦宏予 on 2016/02/16.
//  Copyright © 2016年 Hiroyo Miura. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var foTableView: UITableView!
    //気分をリストで表示できるようにする
    //辞書＋辞書
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    //行数
    func tableView(tabeleView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    //表示するセルの中身2
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell{
        var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
        
            cell.textLabel!.text = d1
//        cell.textLabel!.text = "\(indexPath.row)行目"
//        cell.textLabel!.text = "\(tea_list[indexPath.row])"
//        //文字を茶色にする
//        cell.textLabel!.textColor = UIColor.brownColor()
//        //チェックマークをつける
//        cell.accessoryType = .DisclosureIndicator
//        cell.textLabel!.font = UIFont.systemFontOfSize(20)
        
        return cell
    }
    

    
    
    override func viewWillAppear(animated: Bool) {
        //json.txtファイルを読み込んで
        var path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
        var jsondata = NSData(contentsOfFile: path!)
        
        
        let jsonDictionaray = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as! NSDictionary
        
      
        for (key,data) in jsonDictionaray {
//            var d1 = data["En"] as! String
//            var d2 = data["Ja"] as! String
            var d1 = data
            
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
