# user story

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

# class

add todo tasks
see list of tasks

mark tasks
remove marked task

```ruby
class TodoList
def initialize
end

def add(task)
# task is a string
end


def see_tasks
# returns tasks excluding completed ones
end


def mark_complete(task)
# fails if task doesnt exist
end

end

```

# Examples

```ruby
#1
todo = TodoList.new
todo.list
# => []

#2
todo.add("Do dishes")
todo.list #=> ["Do dishes"]

#3
todo.add("Build table")
todo.add("Wash animals")
todo.list #=> ["Build table", "Wash animals]

#4
todo.add("Build table")
todo.add("Wash animals")
todo.list #=> ["Build table", "Wash animals]
todo.complete("Wash animals")
todo.list #=> ["Build table"]

#5
todo.add("Build table")
todo.add("Wash animals")
todo.list #=> ["Build table", "Wash animals]
todo.complete("Wash animals")
todo.list #=> ["Build table"]
todo.complete("smash glass") # => fails " "

```

# Implement
