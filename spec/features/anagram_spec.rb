describe "anagram plus" do

  describe "anagram" do

    it "should show empty array if no results" do
      visit new_anagram_path

      select "Anagram", from: "anagram_tool"
      fill_in "anagram_input_text", with: "xyzxyzxyz"
      select "Countries", from: "anagram_output_category"
      select "2", from: "anagram_output_num_words"

      click_button "Anagram+!"

      expect(page).to have_text("[]")
    end

    it "should show correct answer with 2 words" do
      visit new_anagram_path

      select "Anagram", from: "anagram_tool"
      fill_in "anagram_input_text", with: "indiabelarus"
      select "Countries", from: "anagram_output_category"
      select "2", from: "anagram_output_num_words"

      click_button "Anagram+!"

      expect(page).to have_text("liberiasudan")
    end

    it "should show correct answer when spaces and capitalization in input" do
      visit new_anagram_path

      select "Anagram", from: "anagram_tool"
      fill_in "anagram_input_text", with: "India Belarus"
      select "Countries", from: "anagram_output_category"
      select "2", from: "anagram_output_num_words"

      click_button "Anagram+!"

      expect(page).to have_text("liberiasudan")
    end

    it "should show correct answer when adding a letter" do
      visit new_anagram_path

      select "Anagram", from: "anagram_tool"
      fill_in "anagram_input_text", with: "r"
      select "World Capitals", from: "anagram_input_category"
      select "1", from: "anagram_input_num_words"
      select "Presidents", from: "anagram_output_category"
      select "2", from: "anagram_output_num_words"

      click_button "Anagram+!"

      expect(page).to have_text("bucharest")
      expect(page).to have_text("carterbush")
    end

  end

  describe "pull out words" do

    it "should show correct answer" do
      visit new_anagram_path

      select "Pull out word", from: "anagram_tool"
      fill_in "anagram_input_text", with: "Leonardo da Vinci"
      select "World Capitals", from: "anagram_output_category"
      select "1", from: "anagram_output_num_words"

      click_button "Anagram+!"

      expect(page).to have_text("london")
    end

    it "should show correct answer when same letter appears earlier in text" do
      visit new_anagram_path

      select "Pull out word", from: "anagram_tool"
      fill_in "anagram_input_text", with: "Frank Sinatra"
      select "World Capitals", from: "anagram_output_category"
      select "1", from: "anagram_output_num_words"

      click_button "Anagram+!"

      expect(page).to have_text("ankara")
    end

  end

end
