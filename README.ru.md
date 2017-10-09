[![Rate at redmine.org](http://img.shields.io/badge/rate%20at-redmine.org-blue.svg?style=flat)](http://www.redmine.org/plugins/redmine_agreement)
# Redmine Agreement Plugin

Плагин для добавление пользовательского соглашения в Redmine

## Использование

1. Установите плагин и выполните миграцию:
```bash
bundle exec rake redmine:plugins:migrate
```

2. Добавьте в вики страницу для пользовательского соглашения и странцу, которая будет показана когда пользователь
отклонит соглашение.
Добавьте на страницы ссылки для принятия и отклонения соглашения: `"Принять":/agreements/accept | "Отклонить":/agreements/reject`

3. Добавьте ссылки страниц в настройки без указания домена. Например, если ссылка такая 'http://site.com/projects/clients/wiki/my_wiki',
то в настройки нужно добавить '/projects/clients/wiki/my_wiki'.

4. Включите плагин в настройках.

# Автор плагина

Плагин разработан в компании [Southbridge](https://southbridge.io)
