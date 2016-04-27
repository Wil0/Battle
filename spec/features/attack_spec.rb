feature 'Attack' do
  scenario 'Attack player 2' do
    sign_in_and_play
    click_button('Attack player 2!')
    expect(page).to have_content('Matt has been hit, the sucker')
  end
end
