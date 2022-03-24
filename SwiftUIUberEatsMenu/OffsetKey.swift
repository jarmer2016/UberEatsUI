//
//  OffsetKey.swift
//  SwiftUIUberEatsMenu
//
//  Created by James Armer on 15/02/2022.
//

import SwiftUI

struct OffsetKey: PreferenceKey {
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}
