//
//  Albums.swift
//  Youtube Music
//
//  Created by Aaron Lee on 2020-10-30.
//

import SwiftUI

struct Albums: View {
    
    private let viewModel = AlbumsViewModel()
    
    var body: some View {
        albums
    }
    
    var albums: some View {
        
        VStack(alignment: .leading) {
            
            Text("Albums")
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .heavy, design: .default))
                .padding(16)
                .padding(.top, 16)
            
            allAlbums
            
        }
        
    }
    
    var allAlbums: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(viewModel.albums, id: \.id) { album in
                    ItemCell(imageFileName: album.imageFileName,
                             title: album.title,
                             subtitle: album.singer,
                             imageSize: 150,
                             cornerRadius: 0)
                        .padding(10)
                }
            }.frame(height: 250)
        }
    }
    
}

struct Albums_Previews: PreviewProvider {
    static var previews: some View {
        Albums().background(Color.black)
    }
}
