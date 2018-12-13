class AddAcceptAgreementAtToUser < Rails.version < '5.0' ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
  def change
    add_column :users, :accept_agreement_at, :datetime
  end
end
