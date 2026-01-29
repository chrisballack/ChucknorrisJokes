//
//  JokesCell.swift
//  Chistes
//
//  Created by Christians Bonilla on 29/01/26.
//

import UIKit

class ChuckNorrisCell: UITableViewCell {
    
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var Joke: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
