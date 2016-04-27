feature 'reduce hit points' do
  scenario 'reduce player 2 hit points' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("Matt's HP reduced by 10 points, HP now 90")
  end
end
