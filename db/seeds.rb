# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all 
Product.create(:title => 'Learn Web Development with Rails',
    :description => 
    %{
        Ruby on Rails Tutorial book and screencast series 
        teach you how to develop and deploy real, 
        industrial-strength web applications with Ruby on Rails.
    },
    :image_url => 'rails_book.png',
    :price => 29.99)
  
Product.create(:title => 'The Ruby Programming Language',
    :description =>
    %{
        The Ruby Programming Language is the authoritative guide 
        to Ruby and provides comprehensive coverage 
        of versions 1.8 and 1.9 of the language.
    },
    :image_url => 'ruby_book.png',
    :price => 39.99)
    
Product.create(title: 'Seven Mobile Apps in Seven Weeks',
    description:
    %{
        Answer the question “Can we build this for ALL the devices?” with a
        resounding YES. This book will help you get there with a real-world
        introduction to seven platforms, whether you’re new to mobile or an
        experienced developer needing to expand your options. Plus, you’ll find
        out which cross-platform solution makes the most sense for your needs.
    },
    image_url: '7apps.jpg',
    price: 26.00)