//
//  Song+Convenience.swift
//  GuidedPlaylistCoreData
//
//  Created by Ian Hall on 8/7/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation
import CoreData

extension Song{
    
    @discardableResult
    convenience init(trackName: String, artist: String, playlist: Playlist, moc: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: moc)
        self.trackName = trackName
        self.artist = artist
        self.playlist = playlist
    }
}
