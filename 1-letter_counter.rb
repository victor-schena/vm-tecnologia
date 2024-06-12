class LetterCounter

    def initialize(word)
        @word = word
    end

    def count_letter
        return if @word.empty?

        letters = {}
        @word.downcase!

        @word.each_char do |c|
            next if c.strip.empty?
            letters[c] =  @word.count(c)
        end
        letters
    end
end
