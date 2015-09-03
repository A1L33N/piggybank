require('spec_helper')

describe(Parent) do
  describe('#kids') do
    it { should have_many(:kids) }
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:bank_name) }
  it { should validate_length_of(:name) }
  it { should validate_length_of(:bank_name) }

  it('capitalizes all letters of parent and bank name') do
    name = Parent.create({:name => 'joan smith', :bank_name => 'mom bank'})
    expect(name.name).to(eq('Joan Smith'))
    expect(name.bank_name).to(eq('Mom Bank'))
  end

end
