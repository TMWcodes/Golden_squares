require 'example.rb'


# Test the behaviour of classes, not the methods within. 
# Test objects, change input to test flexability, functionality and edge cases.
describe 'greet' do
    it 'greets people' do
        expect(greet("Josh")).to eq("Hello, Josh!")
    end
end

describe 'codeword' do
 it 'checks codeword' do
    expect(check_codeword("horse")).to eq("Correct! Come in.")
 end
 it 'gives hint if word is similar' do
    expect(check_codeword("handle")).to eq("Close, but nope.")
 end
 it 'tells you if the codeword is wrong' do
    expect(check_codeword("banana")).to eq("WRONG!")
 end
end

describe 'report_length' do
    it "checks length of string" do
        expect(report_length()).to include($length.to_s)
    end
    it "return length in a string" do
        expect(report_length()).to eq("This string was #{$length.to_s} characters long.")
    end
end

describe Counter do
    it 'adds numbers to count' do
        
        counter = Counter.new
        counter.add(2)
        expect(counter.report).to include(2.to_s)
        expect(counter.report).to eq("Counted to 2 so far.")
    end
end

describe StringBuilder do
 it 'adds string together' do
    x = StringBuilder.new
    x.add('Hi')
    x.add('My')
    x.add('Friend')
    expect(x.output).to eq("HiMyFriend")
 end
end

describe Gratitudes do
    it'starts with 0 gratitudes' do
        y = Gratitudes.new
        expect(subject).to be_truthy
    end

    it'adds gratitudes' do
        y = Gratitudes.new
        y.add("food")
        expect(y.format).to include("food")
    end

    it 'can format entries' do
    y = Gratitudes.new 
    expect(y.format).to eq("Be grateful for: ")
    end

    it 'can translate integers and symbols' do
        y = Gratitudes.new
        y.add(2)
        y.add(:hi)
        expect(y.format).to eq("Be grateful for: 2, hi")
    end
    
end

describe Present do
    context 'when no present is wrapped' do
        it 'fails' do
            present = Present.new
            expect {present.unwrap}.to raise_error("No contents have been wrapped.")
        end
    end
    context 'when trying to wrap a present that is wrapped' do
        it 'fails' do
            present = Present.new
            present.wrap("hat")
            expect {present.wrap("scarf")}.to raise_error("A contents has already been wrapped.")
        end
    end
end



describe PasswordChecker do
 it'checks password is over 8 characters' do
    password = PasswordChecker.new
    expect {password.check("yahoo")}.to raise_error("Invalid password, must be 8+ characters.")
 end
 it'accepts passwords that are valid length' do
    password = PasswordChecker.new
    expect(password.check("Hamlinhamlin"))
 end
end

describe 'make_snippet method' do

    context 'given an string of 5' do
        it 'returns a string of string 5' do
        result = make_snippet("a b c d e")
        expect(result).to eq("a b c d e")
        end
    end
    context 'given an empty string' do
        it 'returns and empty string' do
        result = make_snippet("")
        expect(result).to eq("")
        end
    end
    context 'given an of 7 words string' do
        it 'returns and empty string' do
        result = make_snippet("a b c d e f g")
        expect(result).to eq("a b c d e...")
        end
    end


end

describe 'count_words' do
    # it 'returns an empty string' do
    #     expect(count_words("")).to eq("")
    # end
    it 'return integer' do
        expect(count_words("hello world")).to eq(2)
    end
    context 'if not given a string' do
    it 'fails' do
        expect(count_words(20)).to raise_error("This is not a string")
    end
end
end