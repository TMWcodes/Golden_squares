require 'todolist.rb'

describe TodoList do
    context 'given no tasks' do
        it'returns an empty string' do
            todo_list = TodoList.new
            expect(todo_list.list).to eq([])
        end
    end

    context 'given a task' do
        it'returns the task' do
            todo_list = TodoList.new
            todo_list.add("Do dishes")
            expect(todo_list.list).to eq(["Do dishes"])
        end
    end

    context 'when given multiple tasks' do
        it'shows a list of tasks' do
            todo_list = TodoList.new
            todo_list.add("Build table")
            todo_list.add("Wash animals")
            expect(todo_list.list).to eq(["Build table", "Wash animals"])
        end
    end

    context 'when a task is completed' do
        it'removes task for list' do
            todo_list = TodoList.new
            todo_list.add("Build table")
            todo_list.add("Wash animals")
            todo_list.complete("Wash animals")
            expect(todo_list.list).to eq(["Build table"])
        end
    end

    context 'no tasks are added' do
        it 'fails' do
            todo = TodoList.new
            todo.add("Build table")
            todo.add("Wash animals")
            todo.list #=> ["Build table", "Wash animals]
            expect{todo.complete("smash glass")}.to raise_error " "
        end
    end
end