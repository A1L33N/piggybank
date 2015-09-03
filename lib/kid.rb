class Kid < ActiveRecord::Base
  belongs_to(:parent)
  has_many(:transactions)
  has_many(:chores)
  has_many(:requests)

  validates(:name, {:presence => true, :length => { :maximum => 50}})
  validates(:account_name, {:presence => true, :length => { :maximum => 50}})
  validates(:beginning_balance, {:presence => true})
  validates(:goal, {:presence => true})
  # before_save(:capitalize_words)


  define_method(:balance) do
    self.transactions.sum(:amount).to_f
  end


# not passing for whatever reason
# private
#
#   define_method(:capitalize_words) do
#     self.name = name().titlecase()
#   end
end
