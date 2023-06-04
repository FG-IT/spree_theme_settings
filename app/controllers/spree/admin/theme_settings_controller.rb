module Spree
  module Admin
    class ThemeSettingsController < Spree::Admin::BaseController
      include Spree::Backend::Callbacks

      def edit
        @preferences_security = []
      end

      def update
        config = SpreeThemeSettings::Configuration.new
        params.each do |name, value|
          # # next unless Spree::Config.has_preference? name
          # Spree::Config[name] = value
          next unless config.has_preference? name
          config[name] = value
        end

        ::Rails.cache.delete('spree_navigation_data')

        flash[:success] = Spree.t(:successfully_updated, resource: Spree.t(:general_settings))
        redirect_to edit_admin_theme_settings_path
      end


    end
  end
end
