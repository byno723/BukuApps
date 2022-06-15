//
//  DataType.swift
//  BookApps
//
//  Created by Gorbyno S on 15/06/22.
//

import Foundation

import UIKit

//struct BeatData: Decodable {
//    let data: BeatPackData
//}
//
//struct BeatPackData: Decodable {
//    let dataType: [DataType]
//}

struct DataType: Codable {
  let title    : String
  let author  : String
  let year  : Int
}
