# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users =
  User.create!([
    {email: 'admin@mail', name: 'Администратор', role: 'admin', password: 'simplepass'},
    {email: 'user@mail', name: 'Пользователь', password: 'simplepass'}
  ])

departments =
  Department.create!([
    {title: 'Финансово-экономическое управление'},
    {title: 'Юридическй отдел'},
    {title: 'Административное управление'},
    {title: 'Служба безопасности'},
    {title: 'Группа поддержки пользователей'},
    {title: 'ЦО по БУНУ'},
    {title: 'ОЦО по ИТ'},
  ])


