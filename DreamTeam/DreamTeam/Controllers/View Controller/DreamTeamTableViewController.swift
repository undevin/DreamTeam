//
//  DreamTeamTableViewController.swift
//  DreamTeam
//
//  Created by Devin Flora on 3/8/21.
//

import UIKit

class DreamTeamTableViewController: UITableViewController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        DreamTeamController.share.fetchMembers()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DreamTeamController.share.dreamTeamMembers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath) as? TeamMemberTableViewCell else { return UITableViewCell() }
        let member = DreamTeamController.share.dreamTeamMembers[indexPath.row]
        cell.member = member
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let memberToDelete = DreamTeamController.share.dreamTeamMembers[indexPath.row]
            DreamTeamController.share.deleteMember(memberToDelete: memberToDelete)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? TeamMemberDetailViewController else { return }
            let memberToSend = DreamTeamController.share.dreamTeamMembers[indexPath.row]
            destination.member = memberToSend
        }
    }
}//End of Class
