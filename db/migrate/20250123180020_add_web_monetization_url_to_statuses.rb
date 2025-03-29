# frozen_string_literal: true

class AddWebMonetizationURLToStatuses < ActiveRecord::Migration[8.0]
  def change
    add_column :statuses, :webmonetization_url, :string
  end
end
