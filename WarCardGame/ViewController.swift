//
//  ViewController.swift
//  WarCardGame
//
//  Created by student on 17.11.2020.
//

import UIKit

class ViewController: UIViewController {
    var playerscore = 0
    var cpuscore  = 0
    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var CPUCard: UIImageView!
    @IBOutlet weak var action_button: UIButton!
    @IBOutlet weak var PlayerCard: UIImageView!
    @IBOutlet weak var CPUScore: UILabel!
      @IBOutlet weak var PlayerScore: UILabel!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var result = ""
    
    //generate values 2-14
    func generateValue()->Int{
        return Int.random(in: 2...14)    }
    
    //function action for Deal button
    @IBAction func DealFunc(_ sender: UIButton) {
       
        var playernumber=generateValue()
        var cpunumber=generateValue()
        PlayerCard.image = UIImage (imageLiteralResourceName: "card\(playernumber)")
        CPUCard.image = UIImage (imageLiteralResourceName: "card\(cpunumber)")
        if playerscore < 20 && cpuscore < 20
        {
           if playernumber>cpunumber {
            playerscore += 1
            message.text = "Player wins the round"
            PlayerScore.text = String(playerscore)
            CPUScore.text = String(cpuscore)
            }
            else if playernumber < cpunumber {
            cpuscore += 1
            message.text = "CPU wins the round"
            PlayerScore.text = String(playerscore)
            CPUScore.text = String(cpuscore)
             }
             else {
            
            message.text = "Draw"
             }
        }
        else if playerscore == 20 || cpuscore ==  20 {
        
            if playerscore == 20 {
                
                let displayVC : PopUp = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp") as! PopUp
                    displayVC.answer = "Player Won"
                        
                    self.present(displayVC, animated: true, completion: nil)
                playerscore = 0
                cpuscore = 0
                PlayerScore.text = String(playerscore)
                CPUScore.text = String(cpuscore)
                PlayerCard.image = UIImage (imageLiteralResourceName: "back")
                CPUCard.image = UIImage (imageLiteralResourceName: "back")
            }
            if cpuscore == 20 {
                
                let displayVC : PopUp = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUp") as! PopUp
                    displayVC.answer = "CPU Won"
                        
                    self.present(displayVC, animated: true, completion: nil)
                playerscore = 0
                cpuscore = 0
                PlayerScore.text = String(playerscore)
                CPUScore.text = String(cpuscore)
                PlayerCard.image = UIImage (imageLiteralResourceName: "back")
                CPUCard.image = UIImage (imageLiteralResourceName: "back")
            }
   
        }
        
}
    
}
    
    


