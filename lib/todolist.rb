class TodoList
    def initialize
      @tasks = []
    end


    def add(todo) 
        @tasks << todo
        # todo is an instance of Todo
        # Returns nothing
            # @tasks << task
    end

    def list
        @tasks
    end

    def incomplete
        # Returns all non-done todos
        @tasks.select do |task| 
           !task.done?
        end
    end
    
    def complete #(task)
        @tasks.select do |task| 
            task.done?
         end
    end

    def give_up!
        # Marks all todos as complete
      @tasks.map do |task|
        task.mark_done!
      end
    end
    

end