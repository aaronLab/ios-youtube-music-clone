//
//  NavigationBarModifier.swift
//  Youtube Music
//
//  Created by Aaron Lee on 2020-10-29.
//

import SwiftUI

struct NavigationBarModifier: ViewModifier {

    let backgroundColor: UIColor?

    init(backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor

        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = .clear

        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white

    }

    func body(content: Content) -> some View {
        ZStack {
            content

            VStack {

                GeometryReader { geo in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geo.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }

            }
        }
    }
}
