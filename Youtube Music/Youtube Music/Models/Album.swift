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

extension Album: Identifiable {
    var id: UUID { UUID() }
}

extension Album {

    static func getAll() -> [Album] {
        return [
            Album(title: "Courage To Change", singer: "Sia", imageFileName: "courageToChange"),
            Album(title: "Dua Lipa (Complete Edition)", singer: "Dua Lipa", imageFileName: "duaLipaCompleteEdition"),
            Album(title: "Future Nostalgia", singer: "Dua Lipa", imageFileName: "futureNostalgia"),
            Album(title: "Riding on My Bike", singer: "Sia", imageFileName: "ridingOnMyBike"),
            Album(title: "Together", singer: "Sia", imageFileName: "together")
        ]
    }

}
