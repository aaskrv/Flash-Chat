//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by Adilet on 5/16/20.
//  Copyright © 2020 Adilet. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var senderView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
