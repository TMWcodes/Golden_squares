require 'story.rb'

# As a user
# So that I can manage my time
# I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

describe 'estimate' do
    context 'assuming a reading speed of 200 word per minute' do
        it 'gives an estimated reading time' do
            expect(estimate(200)).to eq("1 minutes")
        end
        it 'can give reading time for different word counts' do
            expect(estimate(400)).to eq("2 minutes")
        end

        it 'can give estimate to 1 decimal point' do
            expect(estimate(300)).to eq("1.5 minutes")
        end

        it 'can give estimate odd word counts' do
            expect(estimate(379)).to eq("1.895 minutes")
        end
        it 'can give estimate odd word counts' do
            expect(estimate(10)).to eq("0.05 minutes")
        end
        it 'fails if NOT given a word count' do
            expect{estimate("hello")}.to raise_error("Not a valid word count")
        end
    end
end

describe 'autocorrect' do
    context 'when given no input' do
        it ' returns empty string' do
            expect(autocorrect()).to eq("")
        end
    end

    it 'capitalizes a string' do
        expect(autocorrect("hello")).to include("Hello")
    end
   
    it'adds full stops' do
       expect(autocorrect("this is a punctuated string")).to eq("This is a punctuated string.")
    end 
end

describe 'grammar_check' do

    context "given an empty string" do
        it 'fails' do
        expect {grammar_check("")}.to raise_error("Invalid input.")
        end
    end

    context "Given a grammatically accurate sentence" do
        it 'validates grammar' do
           result = grammar_check("Hello, I am here.")
        expect(result).to eq true
        end
        it 'validates punctuation' do
            result = grammar_check("Hello, I am here!")
         expect(result).to eq true
        end
        it 'validates punctuation' do
            result = grammar_check("Hello, am i here?")
         expect(result).to eq true
        end
    end

    context "Given a grammatically inaccurate sentence" do
        it 'rejects bad grammar' do
        expect(grammar_check("hello, I am here")).to eq false
        end
        it 'rejects bad punctuation' do
        expect(grammar_check("Hello, Im Tyrone,")).to eq false
        end
    end

    
end