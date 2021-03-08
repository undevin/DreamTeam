//
//  TeamMemberDetailViewController.swift
//  DreamTeam
//
//  Created by Devin Flora on 3/8/21.
//

import UIKit

class TeamMemberDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var funFactLabel: UILabel!
    

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Properties
    var member: DreamTeam? {
        didSet {
            loadViewIfNeeded()
            updateViews()
        }
    }
    
    // MARK: - Actions
    
    
    // MARK: - Methods
    func updateViews() {
        
    }
    
}//End of Class
