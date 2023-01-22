//
//
// GameProtocol.swift
// ICE1_MAPD724_Ajay
// titanhood
// ICE1_MAPD724_Ajay
//
// Created by Ajay Shrivastav on 2023-01-22 on 1:44 PM.


protocol GameProtocol
{
    // Prevent an object from leaving the screen
    func CheckBounds()
    
    // Reset our GameObjects offscreen
    func Reset()
    
    // Initialize properties of Game Objects
    func Start()
    
    // Update will be called every Frame (60 times per second) = 16.666 ms
    func Update()
}
