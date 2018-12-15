//
//  FragmentLayout.swift
//  FragmenTable
//
//  Created by John Yorke on 15/12/2018.
//  Copyright © 2018 John Yorke. All rights reserved.
//

import UIKit

typealias Fragment = CustomTableCell
typealias TableFragment = Fragment & UITableViewCell
typealias CollectionFragment = Fragment & CustomCollectionCell & UICollectionViewCell

protocol FragmentLayout: CaseIterable {
    static func cellType(for row: Int) -> Fragment.Type
}
