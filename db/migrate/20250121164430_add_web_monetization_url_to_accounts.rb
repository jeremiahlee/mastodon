# frozen_string_literal: true

class AddWebMonetizationURLToAccounts < ActiveRecord::Migration[8.0]
  def change
    add_column :accounts, :webmonetization_url, :string
  end
end
