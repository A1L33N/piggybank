class Request < ActiveRecord::Base
  belongs_to(:kid)
  belongs_to(:parent)

  validates(:request_type, {:presence => true})
  validates(:amount, {:presence => true})
  validates(:description, {:presence => true})
end
