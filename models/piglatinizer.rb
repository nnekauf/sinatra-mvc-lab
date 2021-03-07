class PigLatinizer
    attr_reader :text


    def piglatinize(text)
        vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
        words = text.split
        words.map do |word|
          if vowels.include?(word[0])
            word + "way"
          else
            i = 0
            consonants = ""
            until vowels.include?(word[i])
              consonants += word[i]
              i += 1
            end
            word.slice(i..-1) + consonants + "ay"
          end
        end.join(" ")
      end
  
# #split at vowel, add first array to end plus ay
#     def piglatinize
#         if @phrase.split("").count == 1

#                 if ["a","e", "i", "o", "u"].include?(@phrase.downcase)
#                     @phrase + "way"
#                 else
#                 # when ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"].include?(@phrase.downcase)
#                     "ay" + @phrase
#                  end

#         elsif @phrase.split("").count > 1
#             arr = @phrase.split(" ")
#             pig_latin_array = arr.map do |word|
#                 if ["a","e", "i", "o", "u"].include?(word.downcase.split("")[0])
#                     word + "way"
                
#                 elsif ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"].include?(word.downcase.split("")[0])
#                     consonants = word.split(/[aeiou]/)[0]
#                     word.split(consonants)[1]+ consonants + "ay"
                            
#                 end
#             end

#             if pig_latin_array.count > 1
#             pig_latin_string = pig_latin_array.join(",").gsub(",", " ")
#             pig_latin_string
#             else
#                 pig_latin_string = pig_latin_array.join(",")
#             end
#         end
#     end
end