feature 'Testing Names' do
  scenario 'Can see entered names' do
    visit('/')
    fill_in :player1, with: "Oliver"
    fill_in :player2, with: "Luce"
    click_button 'submit'
      expect(page).to have_content "player1 = 'Oliver', player2 = 'Luce'"
  end
end
