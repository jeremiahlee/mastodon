# frozen_string_literal: true

class Admin::Settings::MonetizationController < Admin::SettingsController
  private

  def after_update_redirect_path
    admin_settings_monetization_path
  end
end
