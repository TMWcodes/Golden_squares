require 'todo.rb'

describe 'todo' do
    context 'if task exists ' do
        it 'returns task contents' do
        todo1 = Todo.new("do a thing")
        expect(todo1.task).to eq("do a thing")
        end
    end
    context 'if task is completed' do
        it 'marks the task as done' do
            todo1 = Todo.new("do a thing")
            expect(todo1.mark_done!).to eq "done"
            end
        end
        it 'confirms a task is done' do
            todo1 = Todo.new("do a thing")
            todo1.mark_done!
            expect(todo1.done?).to eq(true)
            #=> true
        end
    # context '' do
    #     it '' do
    #             expect
    #         end
    #     end
end