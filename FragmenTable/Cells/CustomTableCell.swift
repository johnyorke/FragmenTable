//
//  CustomCellProtocol.swift
//  FragmenTable
//
//  Created by John Yorke on 15/12/2018.
//  Copyright © 2018 John Yorke. All rights reserved.
//

import CoreGraphics

protocol CustomTableCell {
    static func height() -> CGFloat
    static func identifier() -> String
}

protocol CustomCollectionCell: CustomTableCell {
    static func width() -> CGFloat
}

extension CustomTableCell {
    static func identifier() -> String {
        return String(describing: Self.self)
    }
}
