feature 'Entering names' do
  scenario 'Submit names by form' do
    player1 = 'Emilio'
    player2 = 'Matt'
    visit '/'
    fill_in('player1', with: player1)
    fill_in('player2', with: player2)
    click_button('Submit')
    expect(page).to have_content("#{player1} vs #{player2}")
  end
end
