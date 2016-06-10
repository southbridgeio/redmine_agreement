module RedmineAgreement
  module UserPatch
    def self.included(base) # :nodoc:
      base.class_eval do
        unloadable

        def accept_agreement?
          self.accept_agreement_at
        end

      end
    end

  end
end
User.send(:include, RedmineAgreement::UserPatch)
