def sign_in_and_play
  # player1 = 'Emilio'
  # player2 = 'Matt'
  visit '/'
  fill_in('player1', with: 'Emilio')
  fill_in('player2', with: 'Matt')
  click_button('Submit')
end