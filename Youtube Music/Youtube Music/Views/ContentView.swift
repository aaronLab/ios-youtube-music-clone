//
//  ContentView.swift
//  Youtube Music
//
//  Created by Aaron Lee on 2020-10-29.
//

import SwiftUI

struct ContentView: View {
    
    private let viewmodel = FavouritesViewModel()
    
    var body: some View {
        NavigationView {

            GeometryReader { geometry in
                
                ScrollView {
                    
                    ZStack {
                        
                        
                        VStack {
                            
                            favourites
                            
                        }
                        
                        
                    }.frame(width: geometry.size.width, alignment: .leading)
                    
                }.background(Color.black)


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
            .navigationBarColor(.systemGray)
        }
    }
}

extension ContentView {
    
    var favourites: some View {
        
        VStack(alignment: .leading) {
            
            Text("Your favourites")
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .heavy, design: .default))
                .padding(16)
                .padding(.top, 16)
            
            singers
            
        }
        
    }
    
    var singers: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(viewmodel.singers, id: \.id) { singer in
                    ItemCell(imageFileName: singer.imageFileName,
                             title: singer.name,
                             subtitle: "\(Double(singer.subscribers).kmFormatted) subscribers")
                        .padding(16)
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
