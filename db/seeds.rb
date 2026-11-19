# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
publisher = []
book = []
user = []
category = []
author = []

50.times do
    user << User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email
    )
end

15.times do
    publisher << Publisher.create(
        name: Faker::Name.unique.name,
        website: Faker::Internet.url
    )
end

100.times do
    book << Book.create(
        title: Faker::Book.title,
        year_of_publication: Faker::Date.between(from: 2.days.ago, to: Date.today),
        isbn: Faker::Number.number(digits: 10),
        publisher: publisher.sample #Somente em relacionamento obrigatorio (Toda vez que um lado da relação carrega um _id que nÃo pode ser nulo)
    )
end

150.times do
    author << Author.create(
        name: Faker::Name.name,
        biography: Faker::Demographic.race
    )
end

5.times do
    Category.create(
        category_name: Faker::Book.genre
    )
end

15.times do
    Review.create(
        notice: Faker::Lorem.sentences,
        comment: Faker::Lorem.paragraph,
        user: user.sample,
        book: book.sample
    )
end

15.times do
    Reservation.create(
        reservation_date: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
        expiration_date: Faker::Date.between(from: '2014-09-26', to: '2014-09-27'),
        user: user.sample,
        book: book.sample
    )
end

15.times do
    Loan.create(
        pickup_date: Faker::Date.between(from: '2014-10-11', to: '2014-10-15'),
        expected_return_date: Faker::Date.between(from: '2014-11-11', to: '2014-11-15'),
        return_date: Faker::Date.between(from: '2014-11-11', to: '2014-11-15'),
        user: user.sample,
        book: book.sample
    )
end

100.times do
    CategoryBook.create(
        book: book.sample,
        category: category.sample
    )
end

puts "Gerando autor"
100.times do
    AuthorBook.create(
        book: book.sample,
        author: author.sample
    )
end


