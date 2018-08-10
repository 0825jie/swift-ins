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
    init(dictionary: [String: Any]) {
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
    }
}
