class ChangeEnglishNullToNotNullInMovie < ActiveRecord::Migration[7.0]
  def change
    change_column_default :movies, :english, from: nil, to: true
  end
end
