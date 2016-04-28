feature 'Viewing hit points' do
  scenario 'show player1 hit points' do
    sign_in_and_play
    expect(page).to have_content("Today's battle:
    Emilio vs Matt Emilio's hit points:
    100 Matt's hit points: 100 Emilio is up first!
    Let the games begin!")
  end

  scenario 'show player2 hit points' do
    sign_in_and_play
    expect(page).to have_content("Today's battle:
    Emilio vs Matt Emilio's hit points:
    100 Matt's hit points: 100 Emilio is up first!
    Let the games begin!")
  end
end
