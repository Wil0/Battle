feature 'shows game over screen' do
  scenario 'player2 HP: 0' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    19.times { click_button('Attack!') }
    expect(page).to have_content("Matt loses!")
  end
  # let(:player1) {double :player}
  scenario 'player1 HP: 0' do
    sign_in_and_play
    click_button("Attack!")
    allow(Kernel).to receive(:rand).and_return(100)
    click_button("Attack!")
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
