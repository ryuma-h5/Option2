//
//  SendViewController.swift
//  Option2
//
//  Created by Ryuma Harada on 2019/05/31.
//  Copyright © 2019 Ryuma Harada. All rights reserved.
//

import UIKit

class SendViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
//    var textSave: UITextView!
    var myText: String = ""
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let textSave: String
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = String(myText)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back() {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
