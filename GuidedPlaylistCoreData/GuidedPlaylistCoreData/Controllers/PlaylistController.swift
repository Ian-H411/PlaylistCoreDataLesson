//
//  PlaylistController.swift
//  GuidedPlaylistCoreData
//
//  Created by Ian Hall on 8/7/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation
import CoreData

class PlaylistController {
    
    var playlists: [Playlist] {
        let fetchrequest: NSFetchRequest<Playlist> = Playlist.fetchRequest()
        return( try? CoreDataStack.context.fetch(fetchrequest)) ?? []
    }
    
    static let sharedInstance = PlaylistController()
    
    //CRUD
    
    //Create
    func createPlaylist(with Name: String){
        let _ = Playlist(name: Name)
        //save
        saveToPersistentStore()
    }
    
    
    func deletePlaylist(playlist: Playlist){
        CoreDataStack.context.delete(playlist)
        //save
        saveToPersistentStore()
    }
    
    func saveToPersistentStore(){
        do{
            try CoreDataStack.context.save()
        } catch {
            print("we made an oopsie" + #function + error.localizedDescription)
        }
    }
}
