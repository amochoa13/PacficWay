//
//  PhotoTableViewCell.swift
//  DontShootTheMessenger
//
//  Created by Jacob Martinez on 4/28/16.
//  Copyright © 2016 Jacob Martinez. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {
    @IBOutlet var TheImageView: UIImageView!

    @IBOutlet var UserImageView: UIImageView!

@IBOutlet var GradientView: UIView!
@IBOutlet var Caption: UILabel!
    
    @IBOutlet var UserName: UILabel!
    
    
    var photo: Photo!{
        didSet{
            self.updateUI()
            
        }
    }
    
    private func updateUI()
    {
        self.TheImageView.image = UIImage(named: photo.name)
        self.UserImageView.image = UIImage(named: photo.User)
        self.Caption.text = photo.Caption
        self.UserName.text = "NamePlaceholder"
    }
    
    
    
    
    
}
