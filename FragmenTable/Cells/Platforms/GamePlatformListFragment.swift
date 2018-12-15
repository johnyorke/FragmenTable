//
//  GamePlatformListFragment.swift
//  FragmenTable
//
//  Created by John Yorke on 15/12/2018.
//  Copyright © 2018 John Yorke. All rights reserved.
//

import UIKit

class GamePlatformListFragment: TableFragment, GameConfigurable {
    
    @IBOutlet weak var gamePlatformsLabel: UILabel!
    
    static func height() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func configure(with game: Game) {
        gamePlatformsLabel.text = game.platforms
            .compactMap { "#\($0.uppercased())" }
            .joined(separator: " ")
    }
    
}
