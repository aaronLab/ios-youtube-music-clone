//
//  View+Extension.swift
//  Youtube Music
//
//  Created by Aaron Lee on 2020-10-29.
//

import SwiftUI

extension View {
    
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }
    
}
