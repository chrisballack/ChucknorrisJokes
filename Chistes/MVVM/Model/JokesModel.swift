//
//  JokesModel.swift
//  Chistes
//
//  Created by Christians Bonilla on 29/01/26.
//

import Foundation

struct JokesModel : Codable {
    let categories : [String]?
    let created_at : String?
    let icon_url : String?
    let id : String?
    let updated_at : String?
    let url : String?
    let value : String?
}
