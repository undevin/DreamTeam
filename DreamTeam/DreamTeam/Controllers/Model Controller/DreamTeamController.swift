//
//  DreamTeamController.swift
//  DreamTeam
//
//  Created by Carla Lyra on 3/8/21.
//

import Foundation
import UIKit

class DreamTeamController {
    
    static let share = DreamTeamController()
    
    var dreamTeamMembers: [DreamTeam] = []
    
    func createMember(name: String, photo: Image, bio: String, funFact: String) {
        let newMember = DreamTeam(name: name, photo: photo, bio: bio, funFact: funFact)
        
        dreamTeamMembers.append(newMember)
        saveToPersistenceStore()
    }
    
    
    func deleteMember(memberToDelete: DreamTeam) {
        
        guard let indexToDelete = dreamTeamMembers.firstIndex(of: memberToDelete) else { return }
        
        dreamTeamMembers.remove(at: indexToDelete)
        saveToPersistenceStore()
    }
    
    // MARK:  -Persistence
    
    // fileURL
    func fileURL() -> URL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let fileURL = urls[0].appendingPathComponent("DreamTeam.json")
        return fileURL
    }
    //save
    func saveToPersistenceStore() {
        do {
            let jsonDreamTeam = try JSONEncoder().encode(dreamTeamMembers)
            try jsonDreamTeam.write(to: fileURL())
        } catch {
            print(error)
            print(error.localizedDescription)
        }
    }
    //load
    func loadFromPersistenceStore() {
        do {
            let data = try Data(contentsOf: fileURL())
            let decodedMembers = try JSONDecoder().decode([DreamTeam].self, from: data)
            dreamTeamMembers = decodedMembers
        } catch {
            print(error)
            print(error.localizedDescription)
        }
    }
}//end of class
