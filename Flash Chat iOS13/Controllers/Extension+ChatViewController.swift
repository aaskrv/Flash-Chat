//
//  Extension+ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Adilet on 5/16/20.
//  Copyright © 2020 Adilet. All rights reserved.
//

import UIKit
import Firebase

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = messages[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
        cell.label.text = message.body
        
        // Message from current user
        if message.sender == Auth.auth().currentUser?.email {
            cell.senderView.isHidden = true
            cell.avatarView.isHidden = false
            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.lightBlue)
            cell.label.textColor = UIColor(named: K.BrandColors.blue)
        } else {
            cell.senderView.isHidden = false
            cell.avatarView.isHidden = true
            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.blue)
            cell.label.textColor = UIColor(named: K.BrandColors.lightBlue)
        }
        
        
        return cell
    }
}
