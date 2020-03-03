//
//  Student+CoreDataProperties.swift
//  Cd_Demo1
//
//  Created by admin on 29/02/20.
//  Copyright © 2020 MSCIT. All rights reserved.
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student");
    }

    @NSManaged public var rno: Int32
    @NSManaged public var sname: String?

}
