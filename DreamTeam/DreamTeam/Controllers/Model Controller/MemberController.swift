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
        
        let carla = DreamTeam(name: "Carla Darnley", photo: Image(withImage: DreamTeamController.share.carla!), bio: "While playing board games with some of my friends, who are iOS developers, we came up with app ideas that would add awesome features to some of the boards games we play. After watching my one friends create a few of the apps that we thought of, I decided I wanted to be able to do the same. ", funFact: "My picture was on a NASDAQ’s screen on TimesSquare for a whole minute after ringing the opening bell. ")
        
        let danny = DreamTeam(name: "Daniel Villedrouin", photo: Image(withImage: DreamTeamController.share.danny!) , bio: "I have been an Apple fan for quite sometime now and I've had every iPhone since its first generation. I have enjoyed my expierence at Devmountain and learning to be an iOS developer. I can't wait to get started on this group project.", funFact: "I play four instruments and my favorite super hero is Spider-Man")
        
        let devin = DreamTeam(name: "Devin Flora", photo: Image(withImage: DreamTeamController.share.devin!), bio: "Ever since the first iphone I've wanted to make an app. With Devmountain I have finally done that. My first app is up in TestFlight now! Hoping to have it release sometime this week.", funFact: "The hospital I was born in is now a potato farm.")
        
        return [carla, danny, devin]
    }
}//End of Class
