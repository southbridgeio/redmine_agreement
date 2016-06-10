module RedmineAgreement
  module ApplicationControllerPatch
    def self.included(base) # :nodoc:
      base.class_eval do
        unloadable

        before_action :check_agreement

        private

        def check_agreement
          if need_accept_agreement? and not allowed_path?
            redirect_to Setting[:plugin_redmine_agreement][:agreement_page]
          end
        end

        def need_accept_agreement?
          Setting[:plugin_redmine_agreement][:enable_agreement] and
            Setting[:plugin_redmine_agreement][:agreement_page].present? and
            Setting[:plugin_redmine_agreement][:reject_agreement_page].present? and not
            User.current.accept_agreement?
        end

        def allowed_path?
          [
            accept_agreements_url,
            reject_agreements_url,
            Setting[:plugin_redmine_agreement][:agreement_page],
            Setting[:plugin_redmine_agreement][:reject_agreement_page]
          ].include?(request.original_url)
        end
      end
    end
  end
end
ApplicationController.send(:include, RedmineAgreement::ApplicationControllerPatch)
