//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by AI Matsubara on 2016/04/28.
//  Copyright © 2016年 AI Matsubara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //名前の宣言は上！！！！！！！！！（見やすいため）
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
        //プロパティはここに書く！！！！！！！！！！！
        
        //選択肢を日付のみにセットするプロパティ
        myDatePicker.datePickerMode = UIDatePickerMode.Date
        //このままの状態だと初期値は今日の日付になっている
        
        
        //初期の日付を設定
        let df = NSDateFormatter()
        //エヌエスデートフォーマッターとゆう
        
        
        //日付のフォーマットを指定
        df.dateFormat = "yyyy/MM/dd"
        
    
        //2016/04/01を指定
        myDatePicker.date = df.dateFromString("2016/04/01")!
        //
        //文字列からdate型に変更しなければならない
        //初期値はないと困るのでNil（！）を入れる
        
        
        //選択肢の範囲を指定する（選んでほしくない日付がある場合などに便利）
        myDatePicker.minimumDate = df.dateFromString("2016/01/01")
        myDatePicker.maximumDate = df.dateFromString("2016/12/31")
        //最大値と最小値は別にシステム上なくても困らないのでNil保証はいらない
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

