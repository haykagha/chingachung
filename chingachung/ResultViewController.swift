//
//  ResultViewController.swift
//  chingachung
//
//  Created by Vahan's MBP on 8/26/19.
//  Copyright © 2019 Vahan's MBP. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController{
    
    var text: String?
    var image: UIImage?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var tryAgain: UIButton!
    
    
    @IBAction func tryAgainButton(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = text
        resultImage.image = image
        tryAgain.layer.masksToBounds = true
        tryAgain.layer.cornerRadius = tryAgain.frame.width / 2
  
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .allowUserInteraction], animations: {
            self.tryAgain.backgroundColor = .white
            self.tryAgain.tintColor = .black
        }, completion: { (_) in
            UIView.animate(withDuration: 1)  {
            self.tryAgain.backgroundColor = .black
            self.tryAgain.tintColor = .white
            }
        })
    }
}


