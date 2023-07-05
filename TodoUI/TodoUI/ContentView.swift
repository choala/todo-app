//
//  ContentView.swift
//  TodoUI
//
//  Created by 박채영 on 2023/07/05.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var todoViewModel = TodoViewModel()
    
    @State var todoContent: String = ""
    
    var body: some View {
        VStack {
            List(todoViewModel.todoList) { todo in
                TodoView(todoViewModel: todoViewModel, todo: todo)
            }
            HStack {
                TextField("Add new TO-DO", text: $todoContent)
                
                Button {
                    todoViewModel.createTodo(todoContent: todoContent)
                    resetTextField()
                } label: {
                    Text("추가")
                }
            }
            .padding()
        }
    }
    
    func resetTextField() {
        todoContent = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
