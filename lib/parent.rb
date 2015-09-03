class Parent < ActiveRecord::Base
  has_many(:kids)
  has_many(:chores)
  has_many(:requests)

  validates(:name, {:presence => true, :length => { :maximum => 50 }})
  validates(:bank_name, {:presence => true, :length => { :maximum => 50 }})
  before_save(:capitalize_words)


  private

  define_method(:capitalize_words) do
    self.name=name().titlecase()
    self.bank_name=bank_name().titlecase()
  end
end
