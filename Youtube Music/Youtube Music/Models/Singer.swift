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

extension Singer: Identifiable {
    var id: UUID { UUID() }
}

extension Singer {

    static func getAll() -> [Singer] {
        return [
            Singer(name: "Chain Smokers", subscribers: 12000000, imageFileName: "chainSmokers"),
            Singer(name: "Dua Lipa", subscribers: 13000000, imageFileName: "duaLipa"),
            Singer(name: "Ellie Goulding", subscribers: 1234135, imageFileName: "ellieGoulding"),
            Singer(name: "Jonas Blue", subscribers: 123412, imageFileName: "jonasBlue"),
            Singer(name: "Martin Garrix", subscribers: 1234116, imageFileName: "martinGarrix")
        ]
    }

}
