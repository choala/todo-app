//
//  TodoViewModel.swift
//  TodoUI
//
//  Created by 박채영 on 2023/07/05.
//

import Foundation

struct Todo: Identifiable {
    var id: UUID = UUID()
    
    var todoString: String
}

class TodoViewModel: ObservableObject {
    var todoContent: String = ""
    
    @Published var todoList: [Todo] = [
        Todo(todoString: "Binding에 대해 찾아보기"),
        Todo(todoString: "하트시그널 7화 보기")
    ]
    
    func createTodo(todoContent: String) {
        todoList.append(Todo(todoString: todoContent))
    }
    
    // TODO: Remove To-Do Content
    func removeTodo(completedTodo: Todo) {
        var index: Int = 0
        for todo in todoList {
            if todo.id == completedTodo.id {
                todoList.remove(at: index)
            }
            
            index += 1
        }
    }
}

