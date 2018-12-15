//
//  GameReleaseFragment.swift
//  FragmenTable
//
//  Created by John Yorke on 15/12/2018.
//  Copyright © 2018 John Yorke. All rights reserved.
//

import UIKit

class GameReleaseDateFragment: GameConfigurableCell {
    
    @IBOutlet private weak var gameReleaseDateLabel: UILabel!
    
    static func height() -> CGFloat {
        return 28
    }
    
    func configure(with game: Game) {
        let released = "Released"
        let releaseDate = game.releaseDate
        let fullString = "\(released): \(releaseDate)"
        let attributedString = NSMutableAttributedString(string: fullString)
        let rangeOfReleased = NSRange(fullString.range(of: released)!, in: fullString)
        attributedString.addAttribute(.foregroundColor, value: UIColor.lightGray, range: rangeOfReleased)
        self.gameReleaseDateLabel.attributedText = attributedString
    }
    
}
