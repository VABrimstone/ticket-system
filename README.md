# Запуск на локальной машине (Linux)
1. Установить Docker и Docker Compose
2. Установить VSCode с расширением Dev Containers
3. В VSCode открыть папку с проектом, исполнить команду Reopen in Container
В контейнере:
4. `bundle exec rails db:create` — создать БД
5. `bundle exec rails db:migrate` — прогнать миграции
6. `bundle exec rails db:seed` — прогнать сиды
7. `bundle exec rails server` — запустить сервер
