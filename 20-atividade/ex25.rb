module Ex25

    def Ex25.break_words(stuff)
        words = stuff.split(' ')
        return words
    end

    def Ex25.sort_words(words)
        return words.sort_words
    end

    def Ex25.print_last_word(words)
        word = words.pop
        puts word
    end

    def Ex25.sort_sentence(sentece)
        words = Ex25.break_words(sentece)
        return Ex25.sort_words(words)
    end

    def Ex25.print_first_and_last(sentence)
        words = Ex25.sor_sentece(sentece)
        Ex25.print_first_word(words)
        Ex25.print_last_word(words)
    end
end