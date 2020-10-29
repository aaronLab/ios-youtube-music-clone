//
//  ContentView.swift
//  Youtube Music
//
//  Created by Aaron Lee on 2020-10-29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {

            GeometryReader { geometry in

                ZStack {
                    Text("Hello")
                }

            }

                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading:
                        Image("symbol"),
                    trailing:
                        HStack(spacing: 20) {
                            Button(action: {
                                print("TV Pressed")
                            }, label: {
                                    Image(systemName: "tv")
                                        .foregroundColor(.white)
                                })

                            Button(action: {
                                print("Search Pressed")
                            }, label: {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.white)
                                })

                            Button(action: {
                                print("Profile Pressed")
                            }, label: {
                                Image("profile")
                                    .resizable()
                                    .frame(width: 30, height: 30, alignment: .center)
                                    .cornerRadius(15)
                            })
                            
                    }
                )
                .navigationBarColor(.darkGray)
        }
    }
}

extension ContentView {
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
