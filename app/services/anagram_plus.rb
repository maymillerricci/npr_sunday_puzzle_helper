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
    input = []
    output = []

    if @tool == "Anagram"
      output_list = prepare_words(list_of_items_from_category(@output_category))
      output_combo_array = words_array_combinations(output_list, @output_num_words)

      if @input_category.present?
        input_list = prepare_words(list_of_items_from_category(@input_category))
        input_combo_array = words_array_combinations(input_list, @input_num_words)
        input_combo_array.map! { |w| w + @input_text }

        output_combo_array.each do |word1|
          input_combo_array.each do |word2|
            if anagrams?(word1, word2)
              input.push(word2)
              output.push(word1)
            end
          end
        end

      else
        output_combo_array.each do |word|
          if anagrams?(@input_text, word)
            output.push(word)
          end
        end
      end

    end
    [input, output]
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
