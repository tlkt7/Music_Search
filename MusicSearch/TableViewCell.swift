//
//  TableViewCell.swift
//  MusicSearch
//
//  Created by Ibrahim on 06.10.2022.
//

import UIKit
import SDWebImage


class TableViewCell: UITableViewCell {

    @IBOutlet weak var artWorkImageView: UIImageView!
    @IBOutlet weak var artisNameLabel: UILabel!
    @IBOutlet weak var trackNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setData(music: ItunesMusic){
        trackNameLabel.text = music.trackName
        artisNameLabel.text = music.artistName
        
        artWorkImageView.sd_setImage(with: URL(string: music.artWorkUrl100), completed: nil)
        
        artWorkImageView.layer.cornerRadius = 8
    }
    
}
