feature 'Entering names' do
  scenario 'Submit names by form' do
    sign_in_and_play
    expect(page).to have_content("Emilio vs Matt")
  end
end
