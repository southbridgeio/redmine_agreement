module RedmineAgreement
  module ApplicationControllerPatch
    def self.included(base) # :nodoc:
      base.class_eval do
        unloadable

        before_filter :check_agreement

        private

        def check_agreement
          if need_accept_agreement?
            redirect_to Setting[:plugin_redmine_agreement][:agreement_page]
          end
        end

        def need_accept_agreement?
          Setting[:plugin_redmine_agreement][:enable_agreement] &&
            Setting[:plugin_redmine_agreement][:agreement_page].present? &&
            Setting[:plugin_redmine_agreement][:reject_agreement_page].present? &&
            !User.current.accept_agreement?
        end
      end
    end
  end
end
ApplicationController.send(:include, RedmineAgreement::ApplicationControllerPatch)
