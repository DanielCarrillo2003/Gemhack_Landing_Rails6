class UpdateMessageFromStringToText < ActiveRecord::Migration[6.1]
  def change
    change_column :correos, :message, :text
  end
end
