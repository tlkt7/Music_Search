//
//  ItunesMusic.swift
//  MusicSearch
//
//  Created by Ibrahim on 06.10.2022.
//

import Foundation
import SwiftyJSON


struct ItunesMusic{
    
    var artistName = " "
    var artWorkUrl100 = " "
    var trackName = " "
    var previewUrl = " "
    
    init(){
        
    }
    
    init(json: JSON){
        if let temp = json["artistName"].string {
            artistName = temp
        }
        if let temp = json["artWorkUrl100"].string {
            artWorkUrl100 = temp
        }
        if let temp = json["trackName"].string {
            trackName = temp
        }
        if let temp = json["previewUrl"].string {
            previewUrl = temp
        }
}
}
