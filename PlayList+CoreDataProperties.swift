//
//  PlayList+CoreDataProperties.swift
//  a207Play
//
//  Created by 申潤五 on 2020/9/19.
//
//

import Foundation
import CoreData


extension PlayList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlayList> {
        return NSFetchRequest<PlayList>(entityName: "PlayList")
    }

    @NSManaged public var filename: String?
    @NSManaged public var url: String?

}

extension PlayList : Identifiable {

}
