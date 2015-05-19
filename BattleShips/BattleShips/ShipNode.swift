//
//  ShipNode.swift
//  BattleShips
//
//  Created by Bruno Omella Mainieri on 5/19/15.
//  Copyright (c) 2015 Bruno Omella. All rights reserved.
//

import SpriteKit

class ShipNode:BSNode {
    
    required init?(coder aDecoder:NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(texture:SKTexture, letra:String, tam:CGFloat){
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        fala = "Acertou!"
    }
}
