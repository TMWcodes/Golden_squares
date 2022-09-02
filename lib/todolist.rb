class TodoList
    def initialize
      @tasks = []
    end


    def add(task)
        @tasks << task
    end

    def list
        @tasks
    end
    
    def complete(task)
        
        if @tasks.include?(task) == !true
            fail " "
        else
            @tasks.delete(task)
        end
    end
end