require 'todolist.rb'

describe TodoList do
    context 'given no tasks' do
        it'returns an empty string' do
            todo = TodoList.new
            expect(todo.list).to eq([])
        end
    end

    context 'given a task' do
        it'returns the task' do
            todo = TodoList.new
            todo.add("Do dishes")
            expect(todo.list).to eq(["Do dishes"])
        end
    end

    context 'when given multiple tasks' do
        it'shows a list of tasks' do
            todo = TodoList.new
            todo.add("Build table")
            todo.add("Wash animals")
            expect(todo.list).to eq(["Build table", "Wash animals"])
        end
    end

    context 'when a task is completed' do
        it'removes task for list' do
            todo = TodoList.new
            todo.add("Build table")
            todo.add("Wash animals")
            todo.complete("Wash animals")
            expect(todo.list).to eq(["Build table"])
        end
    end

    context 'when a non existent task is completed' do
        it'' do
            todo = TodoList.new
            todo.add("Build table")
todo.add("Wash animals")
todo.list #=> ["Build table", "Wash animals]
expect{todo.complete("smash glass")}.to raise_error " "
        end
    end
end