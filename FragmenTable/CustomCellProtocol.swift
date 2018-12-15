//
//  CustomCellProtocol.swift
//  FragmenTable
//
//  Created by John Yorke on 15/12/2018.
//  Copyright © 2018 John Yorke. All rights reserved.
//

import CoreGraphics

protocol CustomCellProtocol {
    static func height() -> CGFloat
    static func identifier() -> String
}

extension CustomCellProtocol {
    static func identifier() -> String {
        return String(describing: Self.self)
    }
}
