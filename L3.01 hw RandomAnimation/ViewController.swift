//
//  ViewController.swift
//  L3.01 hw RandomAnimation
//
//  Created by Valentin on 13.03.2024.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet weak var animationOptionsLabel: UILabel!
    @IBOutlet weak var nextAnimationButton: UIButton!
    @IBOutlet weak var animatedSpringView: SpringView!
    
    private var animationOption = AnimationOption.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextAnimationButton.layer.borderWidth = 1
        nextAnimationButton.layer.cornerRadius = 10
        nextAnimationButton.setTitle("Run \(animationOption.name)", for: .normal)
        
        animatedSpringView.layer.cornerRadius = 10

        runAnimation()
    }


    @IBAction func runAnimationButton(_ sender: UIButton) {
        
        //текущая анимация
        runAnimation()
        
        //следующая анимация
        animationOption = AnimationOption.getRandomAnimation()
        nextAnimationButton.setTitle("Run \(animationOption.name)", for: .normal)
    }
}

extension ViewController {
    private func runAnimation() {
        animationOptionsLabel.text = """
        preset: \(animationOption.name)
        curve: \(animationOption.curve)
        
        force: \(animationOption.force)
        duration: \(animationOption.duration)
        dalay: \(animationOption.delay)
        """
        
        animatedSpringView.animation = animationOption.name
        animatedSpringView.curve = animationOption.curve
        animatedSpringView.force = animationOption.force
        animatedSpringView.duration = animationOption.duration
        animatedSpringView.delay = animationOption.delay
        
        animatedSpringView.animate()
    }
}
