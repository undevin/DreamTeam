//
//  TeamMemberTableViewCell.swift
//  DreamTeam
//
//  Created by Devin Flora on 3/8/21.
//

import UIKit

class TeamMemberTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    
    // MARK: - Properties
    var member: DreamTeam? {
        didSet {
            setupViews()
        }
    }
    
    // MARK: - Methods
    func setupViews() {
        
    }
}//End of Class