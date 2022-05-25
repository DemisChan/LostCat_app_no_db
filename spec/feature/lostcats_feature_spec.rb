RSpec.describe "Lost cats feature", type: :feature do
  it "initializes the empty list of adverts" do
    visit "/lostcats"
    expect(page).to have_content "There are no lost cats"
  end
  
  it "adds an advert for a lost cat" do
    visit "/lostcats"
    click_link "Add Cat"
    fill_in "Name", with: "Sam"
    fill_in "Breed", with: "Normal cat"
    fill_in "Tel", with: "0758371 1228 100"
    fill_in "Pass", with: "oasudoadh"
    click_button "Submit"
    expect(page).to have_content "Sam"
    expect(page).to have_content "Normal cat"
    expect(page).to have_content "0758371 1228 100"
  end

  it "adds multiple adverts for a lost cat" do
    visit "/lostcats"
    click_link "Add Cat"
    fill_in "Name", with: "Sam"
    fill_in "Breed", with: "Normal cat"
    fill_in "Tel", with: "0758371 1228 100"
    fill_in "Pass", with: "87654321"
    click_button "Submit"
    click_link "Add Cat"
    fill_in "Name", with: "Dom"
    fill_in "Breed", with: "Tabby"
    fill_in "Tel", with: "0758371 1228 190"
    fill_in "Pass", with: "12345678"
    click_button "Submit"
    expect(page).to have_content "Sam"
    expect(page).to have_content "Normal cat"
    expect(page).to have_content "0758371 1228 100"
    expect(page).to have_content "Dom"
    expect(page).to have_content "Tabby"
    expect(page).to have_content "0758371 1228 190"
  end
  
  it "adds multiple adverts and deletes one" do
    visit "/lostcats"

    click_link "Add Cat"
    fill_in "Name", with: "Sam"
    fill_in "Breed", with: "Normal cat"
    fill_in "Tel", with: "0758371 1228 100"
    fill_in "Pass", with: "87654321"
    click_button "Submit"

    click_link "Add Cat"
    fill_in "Name", with: "Dom"
    fill_in "Breed", with: "Tabby"
    fill_in "Tel", with: "0758371 1228 190"
    fill_in "Pass", with: "12345678"
    click_button "Submit"

    click_button "delete_1"

    expect(page).to have_content "Sam"
    expect(page).to have_content "Normal cat"
    expect(page).to have_content "0758371 1228 100"
    expect(page).not_to have_content "Dom"
    expect(page).not_to have_content "Tabby"
    expect(page).not_to have_content "0758371 1228 190"
  end  

  it "updates diary entries" do
    visit "/lostcats"

    click_link "Add Cat"
    fill_in "Name", with: "Sam"
    fill_in "Breed", with: "Normal cat"
    fill_in "Tel", with: "0758371 1228 100"
    click_button "Submit"

    click_link "Add Cat"
    fill_in "Name", with: "Dom"
    fill_in "Breed", with: "Tabby"
    fill_in "Tel", with: "0758371 1228 190"
    click_button "Submit"

    click_link "Add Cat"
    fill_in "Name", with: "Matt"
    fill_in "Breed", with: "Persian"
    fill_in "Tel", with: "0758371 1228 180"
    click_button "Submit"

    click_link "edit_0"

    fill_in "Name", with: "Slim"
    fill_in "Breed", with: "Russian"
    fill_in "Tel", with: "0758371 1228 100"
    click_button "Update"


    expect(page).to have_content "Slim"
    expect(page).to have_content "Russian"



    expect(page).to have_content "0758371 1228 100"
    
    expect(page).to have_content "Dom"
    expect(page).to have_content "Tabby"
    expect(page).to have_content "0758371 1228 190"
  end


  it "it does not allow to input HTML in form fields" do
    visit "/lostcats"
    click_link "Add Cat"
    fill_in "Name", with: "Sam"
    fill_in "Breed", with: "Normal cat"
    fill_in "Tel", with: "<button>Evil code!!</button>"
    fill_in "Pass", with: "oasudoadh"
    click_button "Submit"
    expect(page).to have_content "Sam"
    expect(page).to have_content "Normal cat"
    expect(page).not_to have_button "Evil code!!"
  end
end

