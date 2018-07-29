admin = User.new(
    email: 'admin@test.com',
    password: '123456',
    password_confirmation: '123456',
    first_name: 'Admin',
    last_name: 'Admin'
)
admin.save!

guest1 = User.new(
    email: 'guest1@test.com',
    password: '123456',
    password_confirmation: '123456',
    first_name: 'Guest1',
    last_name: 'Guest1'
)
guest1.save!

guest2 = User.new(
    email: 'guest2@test.com',
    password: '123456',
    password_confirmation: '123456',
    first_name: 'Guest2',
    last_name: 'Guest2'
)
guest2.save!

article1 = Article.new(
    user: admin,
    title: 'Title1',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
)
article1.save!

article2 = Article.new(
    user: guest1,
    title: 'Title2',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
)
article2.save!

article3 = Article.new(
    user: guest2,
    title: 'Title3',
    content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
)
article3.save!
