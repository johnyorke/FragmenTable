//
//  GameFragment.swift
//  FragmenTable
//
//  Created by John Yorke on 15/12/2018.
//  Copyright © 2018 John Yorke. All rights reserved.
//

import UIKit

enum GameFragmentLayout: Int, FragmentLayout {
    
    case image = 0
    case title
    case releaseDate
    case platforms
    
    static func cellType(for row: Int) -> Fragment.Type {
        switch GameFragmentLayout(rawValue: row)! {
        case .image:
            return GameImageFragment.self
        case .title:
            return GameTitleFragment.self
        case .releaseDate:
            return GameReleaseDateFragment.self
        case .platforms:
            return GamePlatformListFragment.self
        }
    }
}
