//
//  Singer.swift
//  Youtube Music
//
//  Created by Aaron Lee on 2020-10-29.
//

import Foundation

struct Singer {
    let name: String
    let subscribers: Int
    let imageFileName: String
}

extension Singer {
    
    static func getAll() -> [Singer] {
        return [
            Singer(name: "Chain Smokers", subscribers: 12000000, imageFileName: "chainSmokers.jpg"),
            Singer(name: "Dua Lipa", subscribers: 1234567890, imageFileName: "duaLipa.jpg"),
            Singer(name: "Ellie Goulding", subscribers: 1234135, imageFileName: "ellieGoulding.jpg"),
            Singer(name: "Jonas Blue", subscribers: 123412, imageFileName: "jonasBlue.jpg"),
            Singer(name: "Martin Garrix", subscribers: 123412616, imageFileName: "martinGarrix.jpg")
        ]
    }
    
}
