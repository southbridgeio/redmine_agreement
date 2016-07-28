# Redmine Agreement Plugin

*[Русская версия документации](README.ru.md)*

Plugin developed by [Centos-admin.ru](http://centos-admin.ru/).

This plugin adds the user agreement to Redmine.

## Usage

1. Install the plugin and perform database migration:
```bash
bundle exec rake redmine:plugins:migrate
```

2. Add wiki page for the agreement and wiki page that will be shown when user reject the agreement.
Add on the pages links to accept and reject agreement: `"Accept":/agreements/accept | "Reject":/agreements/reject`

3. Add urls of the pages to settings without domain. For example, if url is 'http://site.com/projects/clients/wiki/my_wiki'
then you need to add to settings '/projects/clients/wiki/my_wiki'.

4. Enable the plugin in settings.

