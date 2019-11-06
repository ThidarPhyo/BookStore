//
//  BookTableViewCell.swift
//  bookstore
//
//  Created by Thidar Phyo on 7/7/19.
//  Copyright © 2019 Thidar Phyo. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bookCoverImageView: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookDescLabel: UILabel!
    @IBOutlet weak var bookPriceLabel: UILabel!
    
    func config(_ book: (String, String, String, Double)) {
        
        bookCoverImageView.image = UIImage(named: book.0)
        bookTitleLabel.text = book.1
        bookDescLabel.text = book.2
        bookPriceLabel.text = "MMK \(book.3)"
        self.selectionStyle = .none
        
    }
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
