//
//  MemberController.swift
//  DreamTeam
//
//  Created by Devin Flora on 3/8/21.
//

import UIKit

class MemberController {
    
    // MARK: - SOT
    var teamMembers: [DreamTeam] {
        
        let carla = DreamTeam(name: <#T##String#>, photo: <#T##Image#>, bio: <#T##String#>, funFact: <#T##String#>)
        
        let danny = DreamTeam(name: "Daniel Villedrouin", photo: Image(withImage: DreamTeamController.share.danny!) , bio: "I have been an Apple fan for quite sometime now and I've had every iPhone since its first generation. I have enjoyed my expierence at Devmountain and learning to be an iOS developer. I can't wait to get started on this group project.", funFact: "I play four instruments and my favorite super hero is Spider-Man")
        
        let devin = DreamTeam(name: "Devin Flora", photo: Image(withImage: DreamTeamController.share.devin!), bio: "Ever since the first iphone I've wanted to make an app. With Devmountain I have finally done that. My first app is up in TestFlight now! Hoping to have it release sometime this week.", funFact: "The hospital I was born in is now a potato farm.")
        
        return [carla, danny, devin]
    }
}//End of Class
