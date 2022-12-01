//
//  ToDoListSwiftUIApp.swift
//  ToDoListSwiftUI
//
//  Created by Nurzhan Ababakirov on 30/11/22.
//

import SwiftUI

@main
struct ToDoListSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            
            let context = persistenceController.container.viewContext
            let dateHolder = DateHolder(context)
            
            TaskListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(dateHolder)
        }
    }
}
