//
//  HomeClass.swift
//  Lab4Redo
//
//  Created by Abe Mowad on 4/19/18.
//  Copyright © 2018 Abe Mowad. All rights reserved.
//

import Foundation

class Home
{
    var type: String
    var price: Int
    var rooms: Int
    var sqFt: Int
    
    init(type: String, price: Int, rooms: Int, sqFt: Int)
    {
        self.type = type
        self.price = price
        self.rooms = rooms
        self.sqFt = sqFt
    }
}
