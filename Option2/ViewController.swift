//
//  ViewController.swift
//  Option2
//
//  Created by Ryuma Harada on 2019/05/31.
//  Copyright © 2019 Ryuma Harada. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var myText1: UITextField!
    var myText: String!
    
    
    //    var textSave: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myText = myText1.text
        
//         self.myText1.delegate = self
        // Do any additional setup after loading the view.
        //        performSegue(withIdentifier: UIStoryboard, sender: AnyObject?.self)
        
        
    }
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        var sendViewcontroller = segue.destination as! SendViewController
    //        SendViewController.myText1 = myText.text
    //    }
    //
    
    //
    //    @IBAction func nextN(_sender: UIButton) {
    //        let next = storyboard!.instantiateInitialViewController(withIdentifier: "toResults")
    //    }
    
    //    /// セグエによる遷移
    //    @IBAction func byPerformSegue(_ sender:UIButton) {
    //        performSegue(withIdentifier: "nextSegue", sender: nil)
    //    }
    //
    //    /// セグエ実行前処理
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        let next = segue.destination as? SendViewController
    //        let _ = next?.view
    //        next?.myText1.text = myText.text
    //    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToResult" {
            //遷移先のSendViewControllerをインスタンス化
            let sendVc = segue.destination as! SendViewController
            //値を渡す
            sendVc.myText = self.myText
        }
    }
    
}

