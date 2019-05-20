//
//  FavoriteTableViewCell.swift
//  Watchill
//
//  Created by Laricia Mota on 10/05/19.
//  Copyright © 2019 Laricia Mota. All rights reserved.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBAction func callContact(_ sender: Any) {
        let digitSet = CharacterSet.decimalDigits
        if let phone = phoneLabel.text {
            let numberToCall = String(phone.unicodeScalars.filter { digitSet.contains($0) })
            guard let number = URL(string: "tel://" + numberToCall) else {
                print("Número inválido.")
                return
            }
            UIApplication.shared.open(number)
        } else {
            print("Número inválido.")
        }
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