class RemoveCompleteColumnFromRequestsTable < ActiveRecord::Migration
  def change
    remove_column(:requests, :complete)
  end
end
