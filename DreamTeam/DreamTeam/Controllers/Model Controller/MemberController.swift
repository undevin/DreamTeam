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
        
        let danny = DreamTeam(name: <#T##String#>, photo: <#T##Image#>, bio: <#T##String#>, funFact: <#T##String#>)
        
        let devin = DreamTeam(name: "Devin Flora", photo: Image(withImage: DreamTeamController.share.devin!), bio: "Ever since the first iphone I've wanted to make an app. With Devmountain I have finally done that. My first app is up in TestFlight now! Hoping to have it release sometime this week.", funFact: "The hospital I was born in is now a potato farm.")
        
        return [carla, danny, devin]
    }
}//End of Class
