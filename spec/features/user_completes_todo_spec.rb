require 'rails_helper'
# acceptance testing
feature 'User completes todo' do
  scenario 'successfully' do
    sign_in

    create_todo 'Do laundry'
    click_on 'Mark complete'

    expect(page).to display_completed_todo 'Do laundry'
  end
end
