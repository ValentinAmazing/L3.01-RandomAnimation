//
//  ViewController.swift
//  L3.01 hw RandomAnimation
//
//  Created by Valentin on 13.03.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var animationOptionsLabel: UILabel!
    @IBOutlet weak var nextAnimationButton: UIButton!
    
    private var animationOption = AnimationOption.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextAnimationButton.layer.borderWidth = 1
        nextAnimationButton.layer.cornerRadius = 10
        nextAnimationButton.setTitle("Run \(animationOption.name)", for: .normal)
    }


    @IBAction func getAnimationButton(_ sender: UIButton) {
        
        //запуск анимации
        
        //подготовка следующей анимации
        animationOption = AnimationOption.getRandomAnimation()
        nextAnimationButton.setTitle("Run \(animationOption.name)", for: .normal)
    }
}

