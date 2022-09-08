class Todo
    def initialize(task) # task is a string
      @task = task
      @complete = false
    end
  
    def task
      # Returns the task as a string
      @task
    end
  
    def mark_done!
      # Marks the todo as done
      # Returns nothing
      @complete = true
      # remove_instance_variable(:@task)
    end
  
    def done?
      # Returns true if the task is done
      # Otherwise, false
    @complete 
    end

  end