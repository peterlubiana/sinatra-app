users = [
  {name: 'Jon', lastname: 'Doe', email: 'bobby@example.com'},
  {name: 'Jane', lastname: 'Doe', email: 'jany@example.com'}
]

users.each do |u|
  User.create(u)
end