require 'redmine'
require_dependency 'redmine_agreement/patches/user_patch'
require_dependency 'redmine_agreement/patches/application_controller_patch'

Redmine::Plugin.register :redmine_agreement do
  name 'Redmine Agreement plugin'
  url 'https://github.com/centosadmin/redmine_agreement'
  description 'This is a plugin for Redmine to add agreement'
  version '0.1.0'
  author 'Centos-admin.ru'
  author_url 'http://centos-admin.ru'

  settings(partial: 'redmine_agreement/settings',
           default: {
             'enable_agreement': false,
             'agreement_page': "",
             'reject_agreemnet_page': "" })
end
