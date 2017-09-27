module RedmineAgreement
  module ApplicationControllerPatch
    def self.included(base) # :nodoc:
      base.class_eval do
        unloadable

        before_action :check_agreement

        private

        def check_agreement
          if need_accept_agreement? && !allowed_path?
            redirect_to plugin_settings['agreement_page']
          end
        end

        def need_accept_agreement?
          plugin_settings['enable_agreement'] &&
              plugin_settings['agreement_page'].present? &&
              plugin_settings['reject_agreement_page'].present? &&
              !user.anonymous? &&
              !user.admin? &&
              !user.accept_agreement?
        end

        def allowed_path?
          [
              accept_agreements_path,
              reject_agreements_path,
              plugin_settings['agreement_page'],
              plugin_settings['reject_agreement_page']
          ].include?(request.original_fullpath)
        end

        def user
          User.current
        end

        def plugin_settings
          Setting.plugin_redmine_agreement
        end
      end
    end
  end
end
ApplicationController.send(:include, RedmineAgreement::ApplicationControllerPatch)
