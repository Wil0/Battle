feature 'Attack' do
  scenario 'Attack player 2' do
    sign_in_and_play
    click_button('Attack player 2!')
    expect(page).to have_content('Matt has been hit, the sucker')
  end

  scenario ' Reduce HP by 10' do
    sign_in_and_play
    click_button('Attack player 2!')
    expect(page).not_to have_content("HP now 100")
    expect(page).to have_content("HP now 90")
  end
end
