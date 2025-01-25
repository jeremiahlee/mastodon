# frozen_string_literal: true

class Settings::MonetizationController < Settings::BaseController
  before_action :set_account

  def show; end

  def update
    if UpdateAccountService.new.call(@account, account_params)
      ActivityPub::UpdateDistributionWorker.perform_async(@account.id)
      redirect_to settings_monetization_path, notice: I18n.t('generic.changes_saved_msg')
    else
      render :show
    end
  end

  private

  def account_params
    params.expect(account: [:webmonetization_url])
  end

  def set_account
    @account = current_account
  end
end
