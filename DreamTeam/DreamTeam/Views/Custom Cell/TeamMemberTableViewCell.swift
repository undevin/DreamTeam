//
//  TeamMemberTableViewCell.swift
//  DreamTeam
//
//  Created by Devin Flora on 3/8/21.
//

import UIKit

class TeamMemberTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    // MARK: - Properties
    var member: DreamTeam? {
        didSet {
            setupViews()
        }
    }
    
    // MARK: - Methods
    func setupViews() {
        guard let member = member else { return }
        nameLabel.text = member.name
        imageIcon.image = member.photo.getImage()
    }
}//End of Class
