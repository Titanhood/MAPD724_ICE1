//
//
// Plane.swift
// ICE1_MAPD724_Ajay
// titanhood
// ICE1_MAPD724_Ajay
//
// Created by Ajay Shrivastav on 2023-01-22 on 1:45 PM.

import GameplayKit
import SpriteKit

class Plane : GameObject
{
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        zPosition = 2
    }
    
    override func Update() {
        CheckBounds()
    }
    
    override func CheckBounds() {
        if(position.x <= -255)
        {
            position.x = -255
        }
        
        if(position.x >= 255)
        {
            position.x = 255
        }
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}
