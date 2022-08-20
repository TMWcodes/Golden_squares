
def estimate(words)
    # time = 200/200
    
    if words%200 == 0
        time = words/200
     "#{time} minutes" 
    elsif words.is_a? Integer 
        time = words/200.to_f
    "#{time} minutes"
    else
    fail "Not a valid word count"
    end
    
end

estimate(1000)


def grammar_check(string="Hello, I am here.")
    fail "Invalid input." if string.empty?
    split_string = string.split("") 
    punctuation = ["!", ".", "?"]
    
    if split_string.first == split_string.first.upcase and punctuation.include?(split_string.last)
        
        true
    else
        false
    end
    # split_string.join("")
end
p grammar_check("Hello, I am here!")

def autocorrect(string = "") 
    if string == ""
        return ""
    else
    string.capitalize + "."
    end
end