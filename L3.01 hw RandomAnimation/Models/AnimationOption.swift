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
        let animation = AnimaLib.shared.preSets.randomElement() ?? AnimaLib.shared.preSets[0]
        let option = AnimaLib.shared.options
        
        return AnimationOption(
            name: animation.name,
            curve: animation.curve,
            
            force: getRandomRoundedValue(in: option.force),
            duration: getRandomRoundedValue(in: option.duration),
            delay: getRandomRoundedValue(in: option.delay),
            
            damping: getRandomRoundedValue(in: option.damping),
            velocity: getRandomRoundedValue(in: option.velocity),
            rotate: getRandomRoundedValue(in: option.rotate),
            x: getRandomRoundedValue(in: option.x),
            y: getRandomRoundedValue(in: option.y),
            scale: getRandomRoundedValue(in: option.scale)
        )
    }
    
    private static func getRandomRoundedValue(in range: Range<Double>) -> Double {
        (Double.random(in: range) * 100).rounded() / 100
    }
}
