class AddAcceptAgreementAtToUser < ActiveRecord::Migration
  def change
    add_column :users, :accept_agreement_at, :datetime
  end
end
