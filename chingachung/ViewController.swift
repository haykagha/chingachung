//
//  ViewController.swift
//  chingachung
//
//  Created by Vahan's MBP on 8/26/19.
//  Copyright © 2019 Vahan's MBP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var text: String?
    
    var image: UIImage?
    
    
   // Passing Data Between View Controllers With Properties (A → B)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ResultViewController
        {
            let vc = segue.destination as? ResultViewController
            vc?.text = text
            vc?.image = image
        }
    }
    
    

    @IBAction func buttonPressed(_ sender: AnyObject) {

        enum Mast: Int {
            case tuxt = 0
            case mkrat = 1
            case qar = 2
        }
        
        func generator() -> Mast {
            let number = Int.random(in: 0 ... 2)
            return Mast(rawValue: number)!
        }
        
        let imQar: Mast
        let qoQar = generator()
        
        
        switch  sender.tag {
        case 0:
            imQar = .tuxt
        case 1:
            imQar = .mkrat
        case 2:
            imQar = .qar
        default:
            return
        }
        
        switch (imQar, qoQar) {
        case (.qar, .mkrat):
            text = "You Win! Rock crushes scissors."
            image = UIImage(named: "RockCrushesScissors")!
        case (.tuxt, .qar):
            text = "You Win! Paper covers rock."
            image = UIImage(named: "PaperCoversRock")!
        case (.mkrat, .tuxt):
            text = "You Win! Scissors cut paper."
            image = UIImage(named: "ScissorsCutPaper")!
        default:
            text = "You Lose!!!"
            image = UIImage(named: "lose")!
        }
        
        performSegue(withIdentifier: "mySegue", sender: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

