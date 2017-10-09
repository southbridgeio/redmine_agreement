[![Rate at redmine.org](http://img.shields.io/badge/rate%20at-redmine.org-blue.svg?style=flat)](http://www.redmine.org/plugins/redmine_agreement)
# Redmine Agreement Plugin

*[Русская версия документации](README.ru.md)*

This plugin adds the user agreement to Redmine.

## Usage

1. Install the plugin and perform database migration:
```bash
bundle exec rake redmine:plugins:migrate
```

2. Add wiki page for the agreement and wiki page that will be shown when a user rejects the agreement.
Add on the pages links to accept and reject the agreement: `"Accept":/agreements/accept | "Reject":/agreements/reject`

3. Add urls of the pages to settings without domain. For example, if url is 'http://site.com/projects/clients/wiki/my_wiki'
then you need to add to settings '/projects/clients/wiki/my_wiki'.

4. Enable the plugin in settings.

# Author of the Plugin

The plugin is designed by [Southbridge](https://southbridge.io)
