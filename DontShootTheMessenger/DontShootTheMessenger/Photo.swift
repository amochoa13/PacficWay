//
//  Photo.swift
//  DontShootTheMessenger
//
//  Created by Jacob Martinez on 4/28/16.
//  Copyright © 2016 Jacob Martinez. All rights reserved.
//

import Foundation

class Photo {
    
    var name: String = ""
    var User: String = ""
    var Caption: String = ""
    var Thumbnail: String = ""
    
    init(name: String, User: String, Caption: String, Thumbnail: String){
        
        self.name = name
        self.User = User
        self.Caption = Caption
        self.Thumbnail = Thumbnail
        
        
    }
    
    class func downloadAllPhotos() ->[Photo]
    {
        var photos = [Photo]()
        
        for i in 1...10{
            let photo = Photo(name: "\(i)", User: "p\(i)", Caption: " Hello Pacific way, I am leaving at 6:00pm from school to Arcadia if anybody is in need of a ride.", Thumbnail: "\(i)")
            photos.append(photo)
        
        }
      
        
        return photos
        
    }
    
    
}
