//
//  DataLoader.swift
//  BookApps
//
//  Created by Gorbyno S on 15/06/22.
//

import Foundation

import UIKit

public class DataLoader {
    @Published var buku = [DataType]()
    init(){
        parseJSON()
    }
    func parseJSON() {
        if let url = Bundle.main.url(forResource: "books", withExtension: "json") {
            
            do {
                let jsonData = try Data(contentsOf: url)
                let response = try JSONDecoder().decode([DataType].self, from: jsonData)
                print("\n-------> response: \(response)")
                self.buku = response
            }
            catch {
                print("\n====> error: \(error)" )
            
            }
        }
        
    }
}

