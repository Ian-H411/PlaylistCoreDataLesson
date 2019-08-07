//
//  SongController.swift
//  GuidedPlaylistCoreData
//
//  Created by Ian Hall on 8/7/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation
import CoreData

class SongController{
    
    //CRUD
    
    //CREATE
    
    func createSong(songName: String, SongArtist: String, playlist: Playlist){
        Song(trackName: songName, artist: SongArtist, playlist: playlist)
        PlaylistController.sharedInstance.saveToPersistentStore()
    }
    //DELETE
    static func deleteSongs(song: Song){
        CoreDataStack.context.delete(song)
        PlaylistController.sharedInstance.saveToPersistentStore()
    }
}
