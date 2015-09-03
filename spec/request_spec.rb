require('spec_helper')

describe(Request) do
  describe('#parent') do
    it { should belong_to(:parent) }
  end

  describe('#kid') do
    it { should belong_to(:kid) }
  end

  it { should validate_presence_of(:request_type) }
  it { should validate_presence_of(:amount) }
  it { should validate_presence_of(:description) }

end
