//
//  AllViewController.swift
//  Cooking
//
//  Created by SEKINE YURI on 2016/02/18.
//  Copyright © 2016年 SEKINE YURI. All rights reserved.
//

import UIKit
import ActionSheetPicker_3_0

class AllViewController: UIViewController, UIActionSheetDelegate {
    
    @IBOutlet var scrollView: UIScrollView!    
    @IBOutlet var foodlabel: UILabel!
    @IBOutlet var ingredientImage: UIImageView!
    @IBOutlet var makeLabel: UILabel!
    @IBOutlet var personLabel: UILabel!

    var number: Int?
    var personNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height+30)
        scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+30)
 
        if number == 0 {
            Egg()
      //  } else if number == 1 {
      //      MeatPotato()
        } else if number == 1 {
            omuRice()
        } else {
        //    foodlabel.text = "\(number)"
        }
        
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        foodlabel.sizeToFit()
        makeLabel.sizeToFit()
    }

    func Egg() {
        var sake: String!
        var soysauce: String!
        var salt: String = "ひとつまみ"
        if personNumber < 3 {
            sake = "小さじ \(personNumber)"
            soysauce = "小さじ \(personNumber)/3"
            salt = "少々"
        } else if personNumber == 3 {
            sake = "大さじ 1"
            soysauce = "小さじ 1"
        } else if personNumber == 4 {
            sake = "大さじ 1 と 1/3"
            soysauce = "小さじ 1 と 1/3"
        }
        
        //foodlabel.layer.position = CGPoint(x: self.view.bounds.width/2, y: 200)
        foodlabel.text = " 卵 \(personNumber)個 \n だし汁 大さじ\(personNumber) \n 塩 \(salt) \n しょうゆ \(soysauce) \n 酒 \(sake) \n 油 適量"
        foodlabel.numberOfLines = 0
//        self.view.addSubview(foodlabel)
//        foodlabel.sizeToFit()
        
        makeLabel.text = " 1. たまごを割って、軽く混ぜる \n 2. 調味料をいれて混ぜる \n 3. 油をひいて、強火にかける \n 4. 卵液を箸で落とし数秒で固まる温度になったら\n   　火を少し弱めて、卵液を半分くらい流し込む \n 5. 半熟になったらフライ返しで巻く \n 6. 残りの卵液を流し込む \n 7. 最後は弱火にして、卵液を流し込み、形を整える \n 8. 切ってお皿に盛り付けて、完成！！ \n 9. ななめに切るとハートにできるよ！"
        //\n\n\n\n\n\n\n\n\n\n\n\n\n\n12
        ingredientImage.image = UIImage(named: "ingre.gif")
        makeLabel.numberOfLines = 0
        
  
    }
    
  /*  func MeatPotato() {
        foodlabel.text = "豚肩ロース薄切り肉100ｇ\nじゃがいも 250ｇ\nたまねぎ 100ｇ\nにんじん 50ｇ\nさやいんげん 20ｇ\nしょうが 5ｇ\nしらたき100ｇ\n (A)水1/2カップ（100ml）\n (A)砂糖大さじ1\n(A)みりん大さじ1\n(A)酒大さじ1\n(A)しょうゆ大さじ2"
        makeLabel.text = "じゃがいもは皮をむき、一口大に切って、水にさらして水気を切る。\nたまねぎは2cm幅のくし切りにする。"
        ingredientImage.image = UIImage(named: "zai.gif")
    }*/

    
    func omuRice() {
        
        var onion: String!
        if personNumber <= 1 {
            onion = "\(personNumber)/4個"
        } else if personNumber == 2 {
            onion = "半分"
        } else if personNumber == 3 {
            onion = "\(personNumber)/4個"
        } else if personNumber == 4 {
            onion = "1個"
        }
        foodlabel.text = " 卵 \(personNumber * 2)個 \n 牛乳 大さじ\(personNumber)　\n バター　適量 \n 鶏もも肉ーーーーー\n 玉ねぎ \(onion) \n 白米 茶碗 \(personNumber)杯分 \n ケチャップ 適量 \n 塩コショウ 少々\n 油 少々"
        foodlabel.numberOfLines = 0
        makeLabel.text = "1. 玉ねぎをみじん切り、鳥もも肉を1.5cm角に切る\n 2. バターをフライパンに入れて、弱火から中火で熱する\n 3. 玉ねぎにゆっくりと火を通し、水分を飛ばす\n 4. 鳥もも肉を入れて、色が変わるまで炒める\n 5. 塩コショウをふって炒める\n 6. 白米を入れてほぐしながら炒める\n 7. ご飯がパラリとしたらケチャップを入れて、全体になじむように炒める\n 8. ケチャップがなじんだら、お皿に移しておく\n 9. ボウルに卵と牛乳をいれて混ぜる\n 10. ペーパーでフライパンをさっと拭いてから、バターをフライパンに入れて中火にする\n 11. 卵液を一度に加え、フライパン全体に広げる\n 12. フライパンを上下左右に少しずつゆする\n 13. 卵の輪郭を菜箸でなぞるように削る\n 14. 卵の上にチキンライスをのせる\n 15. フライパンを少し手前に傾け、向こう側から卵を破かないよう、フライ返しの先をフライパンに押し当てるようにして、卵の下に斜めに差し込む \n 16. 卵をそっとチキンライスにかぶせる\n 17. フライ返しで手前に引き寄せて、フライパンの側面にかるく押し当てながら形作る \n 18. 皿の上でフライパンを少し傾け、縁が皿に当たるくらいまで近づけ、オムライスを皿に移す　\n 19. ケチャップで文字を書いて完成！!"
        ingredientImage.image = UIImage(named: "zai.gif")
        foodlabel.numberOfLines = 0
    }
    
    
    @IBAction func ButtonTapped(sender: UIButton) {
        self.personPicker(sender)
    }
    
    func personPicker(sender: UIButton) {
        let person: [AnyObject] = ["1人分","2人分","3人分","4人分"]
        let actionSheet = ActionSheetStringPicker(title: "choice person", rows: person, initialSelection: 0, doneBlock: {(picker, selectedIndex, id) -> Void in print("picker...\(picker), selectedIndex...\(selectedIndex), id...\(id)")
            
            self.personNumber = selectedIndex + 1
            self.personLabel.text = person[selectedIndex] as? String
         
            if self.number == 0 {
                self.Egg()
          /*  } else if self.number == 1 {
                self.MeatPotato()*/
            } else if self.number == 1 {
                self.omuRice()
            } else {
                
                
            }
            
            }, cancelBlock: { (picker) -> Void in
                print("\(picker)")
            }, origin: sender)
        
        
        
        
        actionSheet.showActionSheetPicker()
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
