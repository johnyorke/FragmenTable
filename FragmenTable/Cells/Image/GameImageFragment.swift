//
//  ImageCell.swift
//  FragmenTable
//
//  Created by John Yorke on 15/12/2018.
//  Copyright © 2018 John Yorke. All rights reserved.
//

import UIKit

class GameImageFragment: TableFragment, GameConfigurable {
    
    @IBOutlet weak var gameImageView: UIImageView!
    
    static func height() -> CGFloat {
        return 240
    }
    
    func configure(with game: Game) {
        self.gameImageView.image = UIImage(named: game.imageName)
    }
    
}
