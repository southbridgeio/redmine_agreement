require 'redmine'
require_dependency './plugins/redmine_agreement/lib/redmine_agreement/patches/user_patch'
require_dependency './plugins/redmine_agreement/lib/redmine_agreement/patches/application_controller_patch'

Redmine::Plugin.register :redmine_agreement do
  name 'Redmine Agreement plugin'
  url 'https://github.com/southbridgeio/redmine_agreement'
  description 'This is a plugin for Redmine to add agreement'
  version '0.1.1'
  author 'Southbridge'
  author_url 'https://github.com/southbridgeio'

  settings(partial: 'redmine_agreement/settings',
           default: {
             'enable_agreement': false,
             'agreement_page': '',
             'reject_agreemnet_page': '' })
end
