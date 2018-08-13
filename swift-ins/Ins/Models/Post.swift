//
//  Post.swift
//  Ins
//
//  Created by GetHired on 8/10/18.
//  Copyright © 2018 jason. All rights reserved.
//

import Foundation

struct Post {
    
    let imageUrl: String
    let user: User
    let caption: String
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
    }
}
