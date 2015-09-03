require('spec_helper')

describe('adding a parent bank', {:type => :feature}) do
  it('add parent bank') do
    visit('/parents')
    fill_in('parent_name', :with => 'Betty Smith')
    fill_in('bank_name', :with => 'Betty Bucks')
    click_button("Add Parent/Bank")
    click_link("Betty Bucks")
    expect(page).to have_content('Betty Bucks')
  end
end

describe('adding a kid account to a parent bank', {:type => :feature}) do
  it('add a kid account to parent bank') do
    visit('/parents')
    fill_in('parent_name', :with => 'Betty Smith')
    fill_in('bank_name', :with => 'Betty Bucks')
    click_button("Add Parent/Bank")
    click_link("Betty Bucks")
    fill_in('name', :with => 'Ben')
    fill_in('account_name', :with => 'Ben Dough')
    fill_in('beginning_balance', :with => 34.00)
    fill_in('goal', :with => 150.00)
    click_button('Add')
    expect(page).to have_content('Ben')
  end
end

describe('adding a chore', {:type => :feature}) do
  it('add a chore') do
    visit('/parents')
    fill_in('parent_name', :with => 'Betty Smith')
    fill_in('bank_name', :with => 'Betty Bucks')
    click_button("Add Parent/Bank")
    click_link("Betty Bucks")
    click_link('Add chores')
    fill_in('description', :with => "do laundry")
    fill_in('pay', :with => 5.00)
    click_button('Add chore')
    expect(page).to have_content('do laundry')
  end
end
