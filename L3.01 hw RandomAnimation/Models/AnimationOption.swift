//
//  Model.swift
//  L3.01 hw RandomAnimation
//
//  Created by Valentin on 13.03.2024.
//

struct AnimationOption {
    let name: String
    let curve: String
    
    let force: Double //1...5
    let duration: Double //0.5...5
    let delay: Double //0...2
    
    let damping: Double //0...1
    let velocity: Double //0...1
    let rotate: Double //-5...5
    let x: Double
    let y: Double
    let scale: Double //0...5
    
    static func getRandomAnimation() -> AnimationOption {
        let animation = AnimaLib.shared.sets.randomElement() ?? AnimaLib.shared.sets[0]
        
        return AnimationOption(
            name: animation.name,
            curve: animation.curve,
            
            force: Double.random(in: animation.options.force),
            duration: Double.random(in: animation.options.duration),
            delay: Double.random(in: animation.options.delay),
            
            damping: Double.random(in: animation.options.damping),
            velocity: Double.random(in: animation.options.velocity),
            rotate: Double.random(in: animation.options.rotate),
            x: Double.random(in: animation.options.x),
            y: Double.random(in: animation.options.y),
            scale: Double.random(in: animation.options.scale)
        )
    }
}
