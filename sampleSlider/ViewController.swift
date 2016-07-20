//
//  ViewController.swift
//  sampleSlider
//
//  Created by 竹田美雪 on 7/20/16.
//  Copyright © 2016 竹田美雪. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var sliderVolume: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let labelText = "スライダー"
        myLabel.text = labelText
        
        // スライダーの設定
        mySlider.minimumValue = 0
        mySlider.maximumValue = 100
        mySlider.value = 20
        
        sliderVolume.text = String(Int(mySlider.value))
        
    }

    @IBAction func changeSlider(sender: UISlider) {
        print(sender.value)
        
        let level = String(Int(mySlider.value))
        sliderVolume.text = level
        
        // TODO: valueが50以下のとき、「音が小さいです」50より大きい時「音が大きいです」とデバッグエリアに表示せよ
        if sender.value <= 50{
            print("音が小さいです")
            myLabel.text = "音が小さいです"
        }else{
            print("音が大きいです")
            myLabel.text = "音が大きいです"
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

