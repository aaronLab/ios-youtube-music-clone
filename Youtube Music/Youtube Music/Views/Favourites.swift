//
//  Favourites.swift
//  Youtube Music
//
//  Created by Aaron Lee on 2020-10-30.
//

import SwiftUI

struct Favourites: View {
    
    private let viewModel = FavouritesViewModel()
    
    var body: some View {
        
        favourites
        
    }
    
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
                ForEach(viewModel.singers, id: \.id) { singer in
                    ItemCell(imageFileName: singer.imageFileName,
                             title: singer.name,
                             subtitle: "\(Double(singer.subscribers).kmFormatted) subscribers",
                             imageSize: 150,
                             cornerRadius: 150 / 2)
                        .padding(16)
                }
            }.frame(height: 250)
        }
    }
}

struct Favourites_Previews: PreviewProvider {
    static var previews: some View {
        Favourites().background(Color.black)
    }
}
