require('spec_helper')

describe(Kid) do
  describe('#parent') do
    it { should belong_to(:parent) }
  end

  describe('#transactions') do
    it { should have_many(:transactions) }
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:account_name) }
  it { should validate_presence_of(:beginning_balance) }
  it { should validate_presence_of(:goal) }

  describe('#balance') do
    it 'returns the total balance of transactions as a float' do
      parent1 = Parent.create({:name => 'Jane', :bank_name => 'Mom Money'})
      kid1 = Kid.create({:name => "Joey", :account_name => 'The Money Pit', :beginning_balance => 50.00, :goal => 500.00, :parent_id => parent1.id})
      date = Date.new(2015, 12, 29)
      transaction1 = Transaction.create({:amount => 45.00, :transaction_type => 'deposit', :description => 'birthday gift', :date => date, :kid_id => kid1.id})
      transaction2 = Transaction.create({:amount => 3.02, :transaction_type => 'deposit', :description => 'allowance', :date => date, :kid_id => kid1.id})
      expect(kid1.balance).to eq(48.02)
    end
  end

  # it('capitalizes all letters of a kid name') do
  #   kid = Kid.create({:name => 'joan smith', :account_name => 'joan bank'})
  #   expect(kid.name).to(eq('Joan Smith'))
  # end


end
