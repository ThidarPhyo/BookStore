//
//  ViewController.swift
//  bookstore
//
//  Created by Thidar Phyo on 7/6/19.
//  Copyright © 2019 Thidar Phyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    // MARK : Book Data
    let books = [
        
        ("1", "Book1", "Book1Desc",1000.0),
        ("2", "Book2", "Book2Desc",2000.0),
        ("3", "Book3", "Book3Desc",3000.0),
        ("4", "Book4", "Book4Desc",4000.0),
        ("5", "Book5", "Book5Desc",5000.0),
        ("6", "Book6", "Book6Desc",6000.0),
        ("7", "Book7", "Book7Desc",7000.0),
        ("8", "Book8", "Book8Desc",8000.0),
        ("9", "Book9", "Book9Desc",9000.0),
        ("10", "Book10", "Book10Desc",10000.0)
        
    ]
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height / 6
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookcell") as! BookTableViewCell // Type casting
        let book = books[indexPath.row]
        cell.config(book)
//
//        cell.bookCoverImageView.image = UIImage(named: book.0)
//        cell.bookTitleLabel.text = book.1 //"US Army in Vietnam"
//        cell.bookDescLabel.text = book.2 //"This book describes the status quo of events happening durig world war II in "
//        cell.bookPriceLabel.text = "MMK \(book.3)"
        return cell
    }
    
    // MARK: TableView Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let book = books[indexPath.row]
        print(book)
        performSegue(withIdentifier: "detailsegue", sender: book)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Only Model, data can be assign/ preconfigure
        if segue.identifier == "detailsegue" {
            let book = sender as! (String,String,String,Double)
            let detailVC = segue.destination as! DetailViewController
            detailVC.book = book
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

