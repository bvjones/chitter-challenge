feature 'Creating a peep' do
  scenario 'want to be able to post a peep' do
    correct_sign_in
    click_button 'Log-in'
    visit '/chitters/new'
    fill_in 'message',   with: 'Hello world'
    click_button 'Post peep'

    expect(current_path).to eq '/peeps'
    expect(page).to have_content 'Hello world'
  end
end