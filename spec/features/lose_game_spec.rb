feature 'shows game over screen' do
  scenario 'player2 HP: 0' do
    sign_in_and_play
    19.times { click_button('Attack!') }
    expect(page).to have_content("Matt loses!")
  end
end
