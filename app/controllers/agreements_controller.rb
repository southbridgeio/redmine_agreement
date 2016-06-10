class AgreementsController < ApplicationController
  unloadable

  def accept
    User.current.update(accept_agreement_at: Time.now)
    redirect_to '/'
  end

  def reject
    redirect_to Setting[:plugin_redmine_agreement][:reject_agreement_page]
  end
end
