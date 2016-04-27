feature 'Viewing hit points' do
  scenario 'show player2 hit points' do
    player1 = 'Emilio'
    player2 = 'Matt'
    visit '/'
    fill_in('player1', with: player1)
    fill_in('player2', with: player2)
    click_button('Submit')
    expect(page).to have_content("#{player2} hit points: 100")
  end
end
