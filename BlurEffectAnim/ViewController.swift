//
//  ViewController.swift
//  BlurEffectAnim
//
//  Created by lianli on 16/12/7.
//  Copyright © 2016年 lianli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var effectView: UIVisualEffectView!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        image.transform = CGAffineTransform(scaleX: 0, y: 0)
        image.alpha = 0
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
       
        
        UIView.animate(withDuration: 2.0, animations: {
            if self.effectView.effect != nil {
                self.image.alpha = 1
                self.image.transform = CGAffineTransform(scaleX: 1, y: 1)
                self.effectView.effect = nil
            } else{
                //注意这里scale不能设为0，设为0就直接消失，没有动画效果了
                self.image.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
                self.image.alpha = 0
                self.effectView.effect = UIBlurEffect(style: .light)
            }
        })
        
        
    }


}

