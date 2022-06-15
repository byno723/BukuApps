//
//  ViewController.swift
//  BookApps
//
//  Created by Gorbyno S on 15/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let Books = DataLoader().buku
//    let categories = ["Makanan", "Pakaian Pria", "Aksesoris", "Laptop", "Smartphone", "Elektronik", "Otomotif", "Ibu Rumah Tangga"]
//
//
//
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    // Do Something Here Later
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Mengatur berapa jumlah item yang akan ditampilkan
        // Kita hitung otomatis berdasarkan jumlah item di array categories
        // Method .count dapat menghitung jumlah item didalam array
        return Books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customViewCell") as? ExampleTableViewCell
        
        // Ambil title kategori dari array berdasarkan index item
       
        
        let data = Books[indexPath.row]
        
//        let title = data[indexPath.row]
        
        // Set data title ke labelTitle
        cell?.lableTitle.text = data.title
        cell?.lableAuthor.text = data.author
        cell?.lableYear.text = String (data.year)
        return cell!
    }
    
}
