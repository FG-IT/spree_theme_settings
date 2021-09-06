require 'digest'
module Spree
  module NavigationHelper
    def spree_navigation_data
      if SpreeThemeSettings::Config.has_preference? :main_nav and SpreeThemeSettings::Config[:main_nav].present?
        config = YAML.load(SpreeThemeSettings::Config[:main_nav]).with_indifferent_access
        config.dig(current_store.code, :navigation) || config.dig(:default, :navigation) || []
      else
        SpreeStorefrontConfig.dig(current_store.code, :navigation) || SpreeStorefrontConfig.dig(:default, :navigation) || []
      end
    rescue
      []
    end
  end
end
