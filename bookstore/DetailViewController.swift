//
//  DetailViewController.swift
//  bookstore
//
//  Created by Thidar Phyo on 7/7/19.
//  Copyright © 2019 Thidar Phyo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var book:(String,String,String,Double)!// doesn't need to create this side
    
    @IBOutlet weak var bookCoverImageView: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookDescTextView: UITextView!
    @IBOutlet weak var bookPriceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        bookCoverImageView.image = UIImage(named: book.0)
        bookTitleLabel.text = book.1
        bookDescTextView.text = book.2
        bookPriceLabel.text = "MMK \(book.3)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
