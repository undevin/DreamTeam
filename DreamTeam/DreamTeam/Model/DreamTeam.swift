//
//  DreamTeam.swift
//  DreamTeam
//
//  Created by Carla Lyra on 3/8/21.
//

import UIKit
import Foundation


class DreamTeam {
    
    var name: String
    var photo: UIImage
    var bio: String
    var funFact: String
    var uuid: String
    
    init(name: String, photo: UIImage, bio: String, funFact: String, uuid: String = UUID().uuidString) {
        self.name = name
        self.photo = photo
        self.bio = bio
        self.funFact = funFact
        self.uuid = uuid
    }
}

extension DreamTeam: Equatable {
    static func == (lhs: DreamTeam, rhs: DreamTeam) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}
