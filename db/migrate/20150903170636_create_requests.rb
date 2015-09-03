class CreateRequests < ActiveRecord::Migration
  def change
    create_table(:requests) do |t|
      t.column(:request_type, :string)
      t.column(:amount, :decimal, precision: 10, scale: 2)
      t.column(:description, :string)
      t.column(:kid_id, :integer)
      t.column(:parent_id, :integer)
      t.column(:complete, :boolean)

      t.timestamps()
    end
  end
end
