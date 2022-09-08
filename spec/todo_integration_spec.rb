require 'todo.rb'
require 'todolist.rb'

describe 'todo integration' do
    context 'once todo is created' do
        it 'adds todo to todo list' do
            todo_list = TodoList.new
            todo1 = Todo.new("string time")
            expect(todo_list.add(todo1)).to eq([todo1])
        end
    

        it 'can list todo' do
            todo_list = TodoList.new
            todo1 = Todo.new("string time")
            todo_list.add(todo1)
            expect(todo_list.list).to eq([todo1])
        end
    end

    context 'when one or more todo is added' do
        it 'shows incomplete tasks' do
            todo_list = TodoList.new
            todo1 = Todo.new("string time")
            todo2 = Todo.new("array time")
            todo_list.add(todo1) #=> [todo1]
            todo_list.add(todo2) #=> [todo2]
            expect(todo_list.incomplete).to eq([todo1, todo2])
        end

        it 'allows user to give up!' do
            todo_list = TodoList.new
            todo1 = Todo.new("string time")
            todo2 = Todo.new("array time")
            todo_list.add(todo1) #=> [todo1]
            todo_list.add(todo2) #=> [todo2]
            todo_list.give_up!
            expect(todo_list.complete).to eq([todo1, todo2])  
        end

        context 'when there is a mix of complete and incomplete tasks ' do
            it 'shows incomplete tasks' do
                todo_list = TodoList.new
                todo1 = Todo.new("string time")
                todo2 = Todo.new("array time")
                todo_list.add(todo1) #=> [todo1]
                todo_list.add(todo2) #=> [todo2]
                todo1.mark_done! #=> nil
                expect(todo_list.incomplete).to eq([todo2])
            end
       
            it 'shows correct tasks' do
                todo_list = TodoList.new
                todo1 = Todo.new("string time")
                todo2 = Todo.new("array time")
                todo_list.add(todo1) #=> [todo1]
                todo_list.add(todo2) #=> [todo2]
                todo1.mark_done! #=> nil
                expect(todo_list.complete).to eq([todo1])
            end

            it 'allows user to give up!' do
                todo_list = TodoList.new
                todo1 = Todo.new("string time")
                todo2 = Todo.new("array time")
                todo_list.add(todo1) #=> [todo1]
                todo_list.add(todo2) #=> [todo2]
                todo1.mark_done!
                todo_list.give_up!
                expect(todo_list.complete).to eq([todo1, todo2])  
            end
        end
    end

    # context '' do
    #     it '' do
    #     end
    # end
end