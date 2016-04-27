feature 'Viewing hit points' do
  scenario 'show player1 hit points' do
    sign_in_and_play
    expect(page).to have_content("Emilio hit points: 100")
  end

  scenario 'show player2 hit points' do
    sign_in_and_play
    expect(page).to have_content("Matt hit points: 100")
  end
end
