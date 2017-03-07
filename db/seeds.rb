# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.count == 0
  
  User.create(
    name:'石井怜央',
    grade:'Semi2014',
    snum:'14T206',
    account:'ishiireo',
    password: Digest::SHA256.hexdigest('ishiireo'),
    password_confirmation: Digest::SHA256.hexdigest('ishiireo'),
    is_admin: true
  )
  
  User.create(
    name:'植勇気',
    grade:'Semi2014',
    snum:'14T212',
    account:'ueyuki',
    password: Digest::SHA256.hexdigest('ueyuki'),
    password_confirmation: Digest::SHA256.hexdigest('ueyuki'),
    is_admin: false
  )

end
