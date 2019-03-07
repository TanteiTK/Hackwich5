//
//  ViewController.swift
//  Hackwich5
//
//  Created by CM Student on 3/7/19.
//  Copyright © 2019 TylerKan-Tanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func myGuessButtonPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Hellow World!", message: "This is my first alert view",preferredStyle:.alert)
        
        let action=UIAlertAction(title:"Awesome", style:.default, handler: nil)
        
        alert.addAction(action)
        
        present (alert, animated: true, completion:nil)  }
    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 0
    @IBAction func sliderHasMoved(_ sender: Any) {
        print("The Value of the slider is:/(slider.value)")
      
        currentValue=lroundf(slider.value)
        
    }
}

