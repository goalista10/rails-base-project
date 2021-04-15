# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'admin@gmail.com', password: '123456', role_admin: 1, role_broker: 0, role_buyer: 0, created_at: DateTime.now, updated_at: DateTime.now)
User.create(email: 'broker@gmail.com', password: '123456', role_admin: 0, role_broker: 1, role_buyer: 0, created_at: DateTime.now, updated_at: DateTime.now)
User.create(email: 'buyer@gmail.com', password: '123456', role_admin: 0, role_broker: 0, role_buyer: 1, created_at: DateTime.now, updated_at: DateTime.now)

Stock.create(user_id: 2, ticker: 'BABA', company: 'Alibaba Group', created_at: DateTime.now, updated_at: DateTime.now)
Stock.create(user_id: 2, ticker: 'AAPL', company: 'Appl Inc', created_at: DateTime.now, updated_at: DateTime.now)

Transaction.create(user_id: 3, stock_id: 2, price: 150.00, quantity: 2, total_amount: 300.00, created_at: DateTime.now, updated_at: DateTime.now)
Transaction.create(user_id: 3, stock_id: 1, price: 120.00, quantity: 1, total_amount: 120.00, created_at: DateTime.now, updated_at: DateTime.now)