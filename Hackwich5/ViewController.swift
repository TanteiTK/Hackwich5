//
//  ViewController.swift
//  Hackwich5
//
//  Created by CM Student on 3/7/19.
//  Copyright © 2019 TylerKan-Tanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    var currentValue: Int=0
    
    var targetValue: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view, typically from a nib.
   currentValue = lroundf(slider.value)
        
        targetValue = 1 + Int(arc4random_uniform(100) )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func myGuessButtonPressed(_ sender: UIButton) {
        let message="The value is:\(currentValue)" + "\nThe target value is : \(targetValue)"
        
        let alert = UIAlertController(title: "Hellow World!", message: message ,preferredStyle:.alert)
        
        let action=UIAlertAction(title:"Awesome", style:.default, handler: nil)
        
        alert.addAction(action)
        
        present (alert, animated: true, completion:nil)
        
    }
    
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        print("The Value of the slider is:\(slider.value)")
      
        currentValue=lroundf(slider.value)
    } Func startNewRound(){
    targetValue = 1 + Int (arc4random_uniform(100))
    currentValue = 50
    silder.value = currentValue
    }
}

