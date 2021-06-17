//
//  ViewController.swift
//  day_03
//
//  Created by 홍진솔 on 2021/03/12.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LBL: UILabel!
    
    @IBAction func changeLabel(_ sender: Any){
    LBL.text = "Hello, Swift"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
