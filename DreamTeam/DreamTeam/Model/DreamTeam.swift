//
//  DreamTeam.swift
//  DreamTeam
//
//  Created by Carla Lyra on 3/8/21.
//

import UIKit
import Foundation


struct DreamTeam: Codable {
    
    public var name: String
    public var photo: Image
    public var bio: String
    public var funFact: String
    public var uuid: String
    
    init(name: String, photo: Image, bio: String, funFact: String, uuid: String = UUID().uuidString) {
        self.name = name
        self.photo = photo
        self.bio = bio
        self.funFact = funFact
        self.uuid = uuid
    }
}

struct Image: Codable{
    let imageData: Data?
    
    init(withImage image: UIImage) {
        self.imageData = image.pngData()
    }

    func getImage() -> UIImage? {
        guard let imageData = self.imageData else {
            return nil
        }
        let image = UIImage(data: imageData)
        
        return image
    }
}

extension DreamTeam: Equatable {
    static func == (lhs: DreamTeam, rhs: DreamTeam) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}
