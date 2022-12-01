//
//  DateHolder.swift
//  ToDoListSwiftUI
//
//  Created by Nurzhan Ababakirov on 30/11/22.
//

import SwiftUI
import CoreData

class DateHolder: ObservableObject
{
    
    init(_ context: NSManagedObjectContext)
    {
        
    }
    
    func saveContext(_ context: NSManagedObjectContext) {
       do {
           try context.save()
       } catch {
           let nsError = error as NSError
           fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
       }
   }
   
}

