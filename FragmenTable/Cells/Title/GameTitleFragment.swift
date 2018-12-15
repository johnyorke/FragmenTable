//
//  GameNameFragment.swift
//  FragmenTable
//
//  Created by John Yorke on 15/12/2018.
//  Copyright © 2018 John Yorke. All rights reserved.
//

import UIKit

class GameTitleFragment: GameConfigurableCell {
    
    @IBOutlet weak var gameTitleLabel: UILabel!
    
    static func height() -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func configure(with game: Game) {
        self.gameTitleLabel.text = game.name.uppercased()
    }
    
}
