//
//  JournalEntry.swift
//  JournalApp
//
//  Created by David Svensson on 2020-01-23.
//  Copyright © 2020 David Svensson. All rights reserved.
//

import Foundation

struct JournalEntry {
    
    private var unformatedDate : Date
    var content : String
    private let dateFormatter = DateFormatter()
    
    // computed property
    var date : String {
        return dateFormatter.string(from: unformatedDate)
    }
    
    init(date: Date, content: String) {
        self.unformatedDate = date
        self.content = content
        dateFormatter.dateFormat = "yyyy-MM-dd"
    }
    
    init(content: String) {
        self.unformatedDate = Date()
        self.content = content
        dateFormatter.dateFormat = "yyyy-MM-dd"
    }
    
    
    
    
    
}
