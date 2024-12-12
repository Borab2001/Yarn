//
//  Message.swift
//  yarn
//
//  Created by Bora Balos on 12/12/2024.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
