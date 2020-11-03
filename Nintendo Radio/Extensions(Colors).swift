//
//  Extensions(Colors).swift
//  Nintendo Radio
//
//  Created by 90305055 on 9/20/20.
//  Copyright © 2020 Gavin English. All rights reserved.
//

import SwiftUI

extension Color {
    static func rgb(r: Double, g: Double, b: Double) -> Color {
        return Color(red: r / 255, green: g / 255, blue: b / 255)
    }
    static let backgroundColor = Color.rgb(r: 21, g: 22, b: 40)
    static let buttonColor = Color.rgb(r: 15, g: 200, b: 220)
}
