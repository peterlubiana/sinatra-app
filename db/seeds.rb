users = [
  {name: 'Bob', lastname: 'The builder', email: 'bobbybuilds@gmail.com',password:'building123',news_articles:'{}'},
  {name: 'Jany', lastname: 'Of Arc', email: 'janyarc@gmail.com',password:'23potatoes',news_articles:'{}'}
]

users.each do |singleUser|
  User.create(singleUser)
end



news = [
  {title: 'Green Rain in China', text: 'China experienced green rain in 4 provinces Monday 23rd of Sept. Local Authorities were alarmed, but it ended after 20 minutes.',author:'janyarc@gmail.com'},
  {title: 'Politics abolished', text: 'Politics have been officially abolished be the US senate. The decision was made due to the people pushing for a new system and world order. ',author: 'bobbybuilds@gmail.com'}
]

news.each do |news|
  News.create(news)
end