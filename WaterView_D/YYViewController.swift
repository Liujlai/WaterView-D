//
//  YYViewController.swift
//  WaterView_D
//
//  Created by idea on 2017/12/20.
//  Copyright © 2017年 idea. All rights reserved.
//

import UIKit

class YYViewController: UIViewController {

    @IBOutlet weak var waterBottomlayout: NSLayoutConstraint!
    @IBOutlet weak var waterView: YYWaterView!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let rootVC = storyboard.instantiateViewController(withIdentifier: ViewController.identifier)
        
        UIView.animate(withDuration: 1, animations: {
            self.waterBottomlayout.constant = 400
            self.waterView.layoutIfNeeded()
            self.view.layoutIfNeeded()
            self.img.alpha = 1
        }) { (bo) in
            UIApplication.shared.keyWindow?.rootViewController = rootVC
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    deinit {
        print("YYViewController deinit")
    }

}
