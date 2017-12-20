//
//  ViewController.swift
//  WaterView_D
//
//  Created by idea on 2017/12/20.
//  Copyright © 2017年 idea. All rights reserved.
//

import UIKit
import YXWaveView

class ViewController: UIViewController {
    
    static let identifier: String = "ViewController"
    fileprivate var waterView: YXWaveView?
    var avatarView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Init Avatar OverView
        let avatarFrame = CGRect(x: 0, y: 0, width: 80, height: 80)
        avatarView = UIImageView(frame: avatarFrame)
        avatarView.layer.cornerRadius = avatarView.bounds.height/2
        avatarView.layer.masksToBounds = true
        avatarView.layer.borderColor  = UIColor.white.cgColor
        avatarView.layer.borderWidth = 3
        avatarView.layer.contents = UIImage(named: "img_nanxing")?.cgImage
        
        let frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: 200)
        waterView = YXWaveView(frame: frame, color: UIColor.white)
        waterView!.addOverView(avatarView)
        waterView!.backgroundColor = UIColor(red: 248/255, green: 64/255, blue: 87/255, alpha: 1)
//        // 实浪颜色
//        waterView?.realWaveColor = UIColor.orange
        
//        // 遮罩浪颜色
//        waterView?.maskWaveColor = UIColor.cyan
        // 波浪速度 (默认: 0.6)
//        waterView?.waveSpeed = 0.6
//        
//        // 浪高 (默认: 5)
//        waterView?.waveHeight = 5
//        
//        // 波浪弯曲程度 (默认: 1.5)
//        waterView?.waveCurvature = 1.6
        // Add WaveView
        self.view.addSubview(waterView!)
        
        // Start wave
        waterView!.start()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         let vc = YYViewController(nibName: "YYViewController", bundle: nil)
              present(vc, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

