//
//  TodoView.swift
//  TodoUI
//
//  Created by 박채영 on 2023/07/05.
//

import SwiftUI

struct TodoView: View {
    var todoViewModel: TodoViewModel
    
    var todo: Todo
    var body: some View {
        HStack {
            Text("\(todo.todoString)")
            
            Spacer()
            
            Button {
                todoViewModel.removeTodo(completedTodo: todo)
            } label: {
                Text("완료")
            }
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView(todoViewModel: TodoViewModel(), todo: Todo(todoString: "Binding에 대해 찾아보기"))
    }
}
