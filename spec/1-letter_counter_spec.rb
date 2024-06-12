require '../1-letter_counter'

RSpec.describe LetterCounter, "#LetterCounter" do
    context "LetterCounter" do
        it "should count each letter correctly" do
          expect(LetterCounter.new("Palavra").count_letter).to eq({"a"=>3, "l"=>1, "p"=>1, "r"=>1, "v"=>1})
        end

        it "should count each letter of each word correctly" do
          expect(LetterCounter.new("pneumoultramicroscopicossilicovulcanoconiótico").count_letter).to eq({"a"=>2, "c"=>7, "e"=>1, "i"=>6, "l"=>3, "m"=>2, "n"=>3, "o"=>8, "p"=>2, "r"=>2, "s"=>3, "t"=>2, "u"=>3, "v"=>1, "ó"=>1})
        end
    end
end
