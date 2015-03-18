class AnagramPlus

  def initialize(params)
    @input_text = params[:input_text]
    @input_category = params[:input_category]
    @input_num_words = params[:input_num_words].to_i
    @output_category = params[:output_category]
    @output_num_words = params[:output_num_words].to_i
  end

  def process
    list = @output_category.singularize.constantize.all.map(&:name)
    combo_array = words_array_combinations(list, @output_num_words)
    output = []
    combo_array.each do |word|
      if anagrams?(@input_text, word)
        output.push(word)
      end
    end
    output
  end

  # TODO: add method for initial word processing: strip out spaces, downcase

  def anagrams?(word1, word2)
    word1.downcase.chars.sort == word2.downcase.chars.sort
  end

  def words_array_combinations(words_array, number_of_words)
    words_array.combination(number_of_words).map(&:join).map(&:downcase)
  end

end
