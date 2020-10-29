//
//  Album.swift
//  Youtube Music
//
//  Created by Aaron Lee on 2020-10-29.
//

import Foundation

struct Album {
    let title: String
    let singer: String
    let imageFileName: String
}

extension Album {
    
    static func getAll() -> [Album] {
        return [
            Album(title: "Courage To Change", singer: "Sia", imageFileName: "courageToChange.jpg"),
            Album(title: "Dua Lipa (Complete Edition)", singer: "Dua Lipa", imageFileName: "duaLipaCompleteEdition.jpg"),
            Album(title: "Future Nostalgia", singer: "Dua Lipa", imageFileName: "futureNostalgia.jpg"),
            Album(title: "Riding on My Bike", singer: "Sia", imageFileName: "ridingOnMyBike.jpg"),
            Album(title: "Together", singer: "Sia", imageFileName: "together.jpg")
        ]
    }
    
}
