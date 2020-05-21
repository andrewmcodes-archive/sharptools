class ApplicationComponent < ViewComponent::Base
  delegate :current_user, to: :helpers

  TONE = %w[~neutral ~positive ~warning ~critical ~info ~urge]
  PRIORITY = %w[!low !normal !high]

  def fetch_or_fallback(allowed_values, given_value, fallback)
    if allowed_values.include?(given_value)
      given_value
    else
      raise ArgumentError, "invalid value supplied to fetch_or_fallback" if Rails.env.development?
      fallback
    end
  end
end
