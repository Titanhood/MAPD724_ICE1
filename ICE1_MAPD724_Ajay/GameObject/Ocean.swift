//
//
// Ocean.swift
// ICE1_MAPD724_Ajay
// titanhood
// ICE1_MAPD724_Ajay
//
// Created by Ajay Shrivastav on 2023-01-22 on 1:45 PM.


import GameplayKit
import SpriteKit

class Ocean : GameObject
{
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        zPosition = 0
        verticalSpeed = 5.0
    }
    
    override func CheckBounds() {
        if (position.y <= -2107)
        {
            Reset()
        }
    }
    
    override func Reset() {
        position.y = 2107
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    func Move()
    {
        position.y -= verticalSpeed!
    }
   
}
