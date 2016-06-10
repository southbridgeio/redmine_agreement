require 'redmine'

Redmine::Plugin.register :redmine_agreement do
  name 'Redmine Agreement plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  settings(partial: 'redmine_agreement/settings',
           default: {
             'enable_agreement': false,
             'agreement_page': "",
             'reject_agreemnet_page': "" })
end
