feature 'Attack' do
  scenario 'Attack player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content("BOOM! Emilio scores a hit!")
  end

  scenario ' Reduce HP by 10' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).not_to have_content("HP now 100")
    expect(page).to have_content("Matt's HP reduced by 10 points, HP now 90")
  end

  # scenario 'Second turn' do
  #   sign_in_and_play
  #   click_button('Attack!')
  #   click_button('Attack!')
  #   expect(page).to have_content("Emilio's HP reduced by 10 points, HP now 90")
  # end
end
