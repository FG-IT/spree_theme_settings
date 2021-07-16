module SpreeThemeSettings
  class Configuration < ::Spree::Preferences::Configuration
    # for more information visit:
    # https://guides.spreecommerce.org/developer/core/preferences.html
    preference :main_nav, :text
    preference :google_ad_id, :string
    preference :google_ad_conversion_id, :string
    preference :head_extra_codes, :text
    preference :footer_extra_codes, :text
    preference :product_tabs, :string
    preference :top_announcement, :string
    preference :return_text, :string
  end
end
