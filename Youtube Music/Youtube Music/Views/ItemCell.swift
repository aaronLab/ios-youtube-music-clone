//
//  ItemCell.swift
//  Youtube Music
//
//  Created by Aaron Lee on 2020-10-30.
//

import SwiftUI

struct ItemCell: View {
    let imageFileName: String
    let title: String
    let subtitle: String
    
    var body: some View {
        
        VStack {
            
            Image(imageFileName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150, alignment: .center)
                .cornerRadius(150 / 2)
            
            Text(title)
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .bold, design: .default))
            
            Text(subtitle)
                .foregroundColor(.gray)
                .font(.system(size: 18, weight: .regular, design: .default))
        }
        
    }
    
}

struct ItemCell_Previews: PreviewProvider {
    static var previews: some View {
        ItemCell(imageFileName: "chainSmokers", title: "Chain Smokers", subtitle: "1.2M")
            .background(Color.black)
    }
}
