context "Filling in the Form" do
  before do
    visit "/new"
  end

  it "can fill in forms for a pirate and two ships" do
    fill_in("pirate[name]", with: "Captain Jack Sparrow")
    fill_in("pirate[weight]", with: "190 lbs")
    fill_in("pirate[height]", with: "5 feet 11 inches")
    page.find(:css, "#ship_name_1").fill_in(with: "Flying Dutchman")
    page.find(:css, "#ship_type_1").fill_in(with: "ghost ship")
    page.find(:css, "#ship_booty_1").fill_in(with: "gold coins")
    page.find(:css, "#ship_name_2").fill_in(with: "Black Pearl")
    page.find(:css, "#ship_type_2").fill_in(with: "merchant vessel")
    page.find(:css, "#ship_booty_2").fill_in(with: "treasure map")
    # fill_in("ship_type_1", with: "ghost ship")
    # fill_in("ship_booty_1", with: "gold coins")
    # fill_in("ship_name_2", with: "Black Pearl")
    # fill_in("ship_type_2", with: "merchant vessel")
    # fill_in("ship_booty_2", with: "treasure map")
    click_button("Submit")
    expect(page).to have_content("Captain Jack Sparrow")
    expect(page).to have_content("190 lbs")
    expect(page).to have_content("5 feet 11 inches")
    expect(page).to have_content("Flying Dutchman")
    expect(page).to have_content("ghost ship")
    expect(page).to have_content("gold coins")
    expect(page).to have_content("Black Pearl")
    expect(page).to have_content("merchant vessel")
    expect(page).to have_content("treasure map")
  end
end
