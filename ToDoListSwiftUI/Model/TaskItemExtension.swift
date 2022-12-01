//
//  TaskItemExtension.swift
//  ToDoListSwiftUI
//
//  Created by Nurzhan Ababakirov on 1/12/22.
//

import SwiftUI

extension TaskItem
{
    func isCompleted() -> Bool
    {
        return completedDate != nil
    }
}
