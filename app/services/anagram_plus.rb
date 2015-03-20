class AnagramPlus

  def initialize(params)
    @tool = params[:tool]
    @input_text = prepare_word(params[:input_text])
    @input_category = params[:input_category]
    @input_num_words = params[:input_num_words].to_i
    @output_category = params[:output_category]
    @output_num_words = params[:output_num_words].to_i
  end

  def process
    output = []
    if @tool == "Anagram"
      list = prepare_words(list_of_items_from_category(@output_category))
      combo_array = words_array_combinations(list, @output_num_words)
      combo_array.each do |word|
        if anagrams?(@input_text, word)
          output.push(word)
        end
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

  def list_of_items_from_category(category_name)
    category = AnagramsHelper::CATEGORIES.find { |c| c[:name] == category_name }
    category[:model].all.map { |c| c.send(category[:primary_field]) }
  end

  def anagrams?(word1, word2)
    word1.chars.sort == word2.chars.sort
  end

  def words_array_combinations(words_array, number_of_words)
    words_array.combination(number_of_words).map(&:join)
  end

end
