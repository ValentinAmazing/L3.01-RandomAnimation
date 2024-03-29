//
//  DataStore.swift
//  L3.01 hw RandomAnimation
//
//  Created by Valentin on 13.03.2024.
//

final class AnimaLib {
    
    static let shared = AnimaLib()
    
    let options = (
        force: 1.0..<5,
        duration: 0.5..<5,
        delay: 0.0..<1,
        damping: 0.0..<1,
        velocity: 0.0..<1,
        rotate: -5.0..<5,
        x: -100.0..<100,
        y: -100.0..<100,
        scale: 0.0..<5
    )
  
    //вероятно, надо подобрать, для каждой опции, оптимальные диапазоны анимации и задать их индивидуально
    let preSets = [
        (
            name: "zoomIn",
            curve: "easeOutQuin"
        ),
        (
            name: "flipX",
            curve: "easeInCirc"
        ),
        (
            name: "squeeze",
            curve: "easeOutBack"
        ),
        (
            name: "morph",
            curve: "easeInOutCirc"
        ),
        (
            name: "swing",
            curve: "easeInOutCirc"
        ),
        (
            name: "shake",
            curve: "easeInOutCirc"
        )
    ]
    
    private init() {}
}
