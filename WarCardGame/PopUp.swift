//
//  PopUp.swift
//  WarCardGame
//
//  Created by student on 19.11.2020.
//

import UIKit

class PopUp: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Result.text = answer
    }
    var answer : String = ""
    @IBAction func Restart(_ sender: UIButton) {

        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var Result: UILabel!

    @IBAction func Exit(_ sender: UIButton) {
        exit(0)
    }
    
}
