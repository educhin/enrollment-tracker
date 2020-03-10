class MoveUidAbovePassword < ActiveRecord::Migration[6.0]
  def change
    change_column :students, :uid, :string, after: :email
  end
end
