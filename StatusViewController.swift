//
//  statusViewController.swift
//  TinderStyleApp
//
//  Created by yuki takei on 2015/08/22.
//  Copyright (c) 2015年 kiiita. All rights reserved.
//

import UIKit

class StatusViewController: UIViewController {
    
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得


    @IBOutlet weak var todayLikeCountLabel: UILabel!
    @IBOutlet weak var totalLikeCountLabel: UILabel!
    @IBOutlet weak var totalRankCountLabel: UILabel!
    @IBOutlet weak var typeRankCountLabel: UILabel!
    
    
    @IBOutlet weak var todayLikeLabel: UILabel!
    @IBOutlet weak var totalLikeLabel: UILabel!
    @IBOutlet weak var totalRankLabel: UILabel!
    @IBOutlet weak var typeRankLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        todayLikeLabel.text = "本日のLike"
        totalLikeLabel.text = "今までのLike"
        totalRankLabel.text = "総合ランキング"
        typeRankLabel.text = "かめ"
        
        //数字表記
        todayLikeCountLabel.text = String(appDelegate.countTodayLike)
        totalLikeCountLabel.text = String(appDelegate.countTotalLike)
        totalRankCountLabel.text = "110位"
        typeRankCountLabel.text = "11位"

        
        // Do any additional setup after loading the view.
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
