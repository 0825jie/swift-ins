//
//  User.swift
//  Ins
//
//  Created by GetHired on 8/13/18.
//  Copyright © 2018 jason. All rights reserved.
//

import Foundation


struct User {
    let username: String
    let profileImageUrl: String
    
    init(dictionary: [String: Any]) {
        self.username = dictionary["username"] as? String ?? "Default_Name"
        self.profileImageUrl = dictionary["profileImageUrl"]  as? String ?? ""
    }
}
