class AnagramPlus

  def initialize(params)
    @input_text = prepare_word(params[:input_text])
    @input_category = params[:input_category]
    @input_num_words = params[:input_num_words].to_i
    @output_category = params[:output_category]
    @output_num_words = params[:output_num_words].to_i
  end

  def process
    list = prepare_words(list_of_items_from_category(@output_category, :name))
    combo_array = words_array_combinations(list, @output_num_words)
    output = []
    combo_array.each do |word|
      if anagrams?(@input_text, word)
        output.push(word)
      end
    end
    output
  end

  private

  def prepare_word(word)
    word.downcase.gsub(/\W+/, "")
  end

  def prepare_words(words_array)
    words_array.map { |w| prepare_word(w) }
  end

  def list_of_items_from_category(category, field_name)
    category.singularize.constantize.all.map { |i| i.send(field_name) }
  end

  def anagrams?(word1, word2)
    word1.downcase.chars.sort == word2.downcase.chars.sort
  end

  def words_array_combinations(words_array, number_of_words)
    words_array.combination(number_of_words).map(&:join)
  end

end
