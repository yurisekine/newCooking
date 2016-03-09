//
//  FoodViewController.swift
//  Cooking
//
//  Created by SEKINE YURI on 2016/02/18.
//  Copyright © 2016年 SEKINE YURI. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {
    
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    var nameText: String?
    
    @IBOutlet var foodImage: UIImageView!
    var foodimage: UIImage?
    
    var number: Int?


    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = nameText
        foodImage.image = foodimage
        
        if number == 0 {
            timeLabel.text = "所要時間　15分"
        } else if number == 1 {
            timeLabel.text = "所要時間　20分"
        } else if number == 3 {
            timeLabel.text = "所要時間　40分"
        } else {
        
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let row = number
        
        if segue.identifier == "all" {
            
            let allViewController = segue.destinationViewController as! AllViewController
            allViewController.number = row   //料理名
            
        } else if segue.identifier == "cook" {
            
            let cookViewController = segue.destinationViewController as! CookViewController
            cookViewController.foodnumber = row
            
        } else {
            //
        }
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
