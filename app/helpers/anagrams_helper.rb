module AnagramsHelper
  TOOLS = ["Anagram", "Pull out word"]

  CATEGORIES = [
    { name: "Countries",        model: Country,   primary_field: :name },
    { name: "Country Capitals", model: Capital,   primary_field: :name },
    { name: "States",           model: State,     primary_field: :name },
    { name: "State Capitals",   model: State,     primary_field: :capital },
    { name: "Presidents",       model: President, primary_field: :last_name }
  ]

  def category_names
    CATEGORIES.map { |c| c[:name] }
  end
end
