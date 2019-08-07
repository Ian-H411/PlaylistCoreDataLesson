//
//  Playlist+Convenience.swift
//  GuidedPlaylistCoreData
//
//  Created by Ian Hall on 8/7/19.
//  Copyright © 2019 Ian Hall. All rights reserved.
//

import Foundation

import CoreData

extension Playlist {
    convenience init(name:String,song:[Song]= [],moc: NSManagedObjectContext = CoreDataStack.context){
        self.init(context:moc)
        self.name = name
    }
}

