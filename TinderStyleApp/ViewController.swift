//
//  ViewController.swift
//  TinderStyleApp
//
//  Created by kiiita on 2014/08/30.
//  Copyright (c) 2014年 kiiita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hamburgerView: UIView!
    @IBOutlet weak var underView: UIView!
    @IBAction func bottonHamburger(sender: AnyObject) {
        
        
        UIView.animateWithDuration(1, // アニメーションの時間
            animations: {() -> Void  in
                // アニメーションする処理
                self.hamburgerView.frame.origin.x = UIScreen.mainScreen().bounds.width - 320
        })

        var count = 0;
        count++
        NSLog("count");
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var draggableBackground = DraggableViewBackground(frame: self.view.frame)
        self.view.addSubview(draggableBackground)
        
        self.view.bringSubviewToFront(hamburgerView);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

