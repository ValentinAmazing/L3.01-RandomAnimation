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
        let option = AnimaLib.shared.options
        
        return AnimationOption(
            name: animation.name,
            curve: animation.curve,

            force: Double.random(in: option.force),
            duration: Double.random(in: option.duration),
            delay: Double.random(in: option.delay),

            damping: Double.random(in: option.damping),
            velocity: Double.random(in: option.velocity),
            rotate: Double.random(in: option.rotate),
            x: Double.random(in: option.x),
            y: Double.random(in: option.y),
            scale: Double.random(in: option.scale)
        )
    }
}
