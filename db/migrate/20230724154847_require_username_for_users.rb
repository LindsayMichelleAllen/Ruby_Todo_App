class RequireUsernameForUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :username, false, "test"
  end
end
