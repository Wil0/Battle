feature 'shows game over screen' do
  scenario 'player2 HP: 0' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    19.times { click_button('Attack!') }
    expect(page).to have_content("Matt loses!")
  end

  scenario 'player1 HP: 0' do
    sign_in_and_play
    allow(player1).to receive(:points).and_return(0)
    expect(page).to have_content("Emilio loses!")
  end

  scenario 'it allows player to restart the game' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    19.times { click_button('Attack!') }
    click_button('Restart')
    expect(page).to have_content("Welcome to the Arena!")
  end
end
