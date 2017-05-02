User.destroy_all

u1 = User.create(firstname: "Chris",
lastname: "Johnston",
email: "johnstonchristo@gmail.com",
password: "chicken",
password_confirmation:"chicken")

u2 = User.create(firstname: "Tom",
lastname: "Richardson",
email: "johnstonchristo@gmail.com",
password: "password",
password_confirmation:"password")

u3 = User.create(firstname: "Ali",
lastname: "Sanders",
email: "christo.johnston@gmail.com",
password: "brixton",
password_confirmation:"brixton")

p u1.password_digest
p u2.password_digest
p u3.password_digest


Journal.destroy_all

j1 = Journal.create(journal_title: "Life",
number_of_entries: 5,
time_period: "week",
word_count: 300,
user_id: u1.id)

j2 = Journal.create(journal_title: "Football",
number_of_entries: 2,
time_period: "month",
word_count: 400,
user_id: u2.id)

j3 = Journal.create(journal_title: "WDI",
number_of_entries: 1,
time_period: "week",
word_count: 300,
user_id: u3.id)

j4 = Journal.create(journal_title: "all the things",
number_of_entries: 1,
time_period: "week",
word_count: 400,
user_id: u3.id)

Post.destroy_all

p1 = Post.create(post_title: "all the things",
post_content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
journal_id: j1.id)

p2 = Post.create(post_title: "i hate you",
post_content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
journal_id: j1.id)

p3 = Post.create(post_title: "i love you",
post_content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
journal_id: j1.id)

p4 = Post.create(post_title: "the dog",
post_content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
journal_id: j2.id)

p5 = Post.create(post_title: "the cat",
post_content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
journal_id: j2.id)

p6 = Post.create(post_title: "mum",
post_content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
journal_id: j3.id)

p7 = Post.create(post_title: "dad",
post_content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
journal_id: j4.id)
