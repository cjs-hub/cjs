//
//  OffsetKey.swift
//  Cjs
//
//  Created by Ahmed Yussufu on 2022-04-11.
//

import Foundation
import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}
