def greet(name)
    return "Hello, #{name}!"
end

greet("josh")

def check_codeword(codeword)
    if codeword == "horse"
      return "Correct! Come in."
    elsif codeword.chars.first == "h" && codeword.chars.last == "e"
      return "Close, but nope."
    else
      return "WRONG!"
    end
end

def report_length(str = "smash")
  $length = str.length
  return "This string was #{$length} characters long."
end

report_length()

class Counter
  def initialize
    @count = 0
  end

  def add(num)
    @count += num
  end

  def report
    return "Counted to #{@count} so far."
  end
end

class StringBuilder
  def initialize
    @str = ""
  end

  def add(str)
    @str += str
  end

  def size
    return @str.length
  end

  def output
    return @str
  end
end

class Gratitudes
  def initialize
    @gratitudes = []
  end

  def add(gratitude)
    @gratitudes.push(gratitude)
  end

  def format
    formatted = "Be grateful for: "
    formatted += @gratitudes.join(", ")
  end
end


class Present
  def wrap(contents)
    fail "A contents has already been wrapped." unless @contents.nil?
    @contents = contents
  end

  def unwrap
    fail "No contents have been wrapped." if @contents.nil?
    return @contents
  end
end


class PasswordChecker
  def check(password)
    if password.length >= 8
      return true
    else
      fail "Invalid password, must be 8+ characters."
    end
  end
end

def make_snippet(string)
  words = string.split(" ")
  if words.length <= 5
    return string
  else
    return words[0,5].join(" ") + "..."
  end
end

def count_words(string)
  counter = 0
  p words = string.split
  words.each do |word| 
    counter += 1
  end
  counter
end