# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create(
  [
    {
      eMail: 'Bob.budowniczy@gmail.com',
      login: 'bobrob',
      name: 'Bob Budowniczy',
      nickName: 'Robob',
      password_digest: 'haslo123',
      phoneNumber: 123456789
    },
    {
        eMail: 'Krecik.slepiec@gmail.com',
        login: 'Kretsep',
        name: 'Krecik slepiec',
        nickName: 'kretoszczur',
        password_digest: 'haslo123',
        phoneNumber: 987654321
    }
  ]
)

roles = Role.create(
    [
        {
            isEmployee: 1,
            isRepairBuisness: 0,
            isUser: 1,
        },
        {
            isEmployee: 1,
            isRepairBuisness: 0,
            isUser: 1,
        },
    ]
)

forumPosts = ForumPost.create (
    [
        {
            ID_User: users.first,
            ID_Role: roles.first,
            content: 'Pobieramy Interpreter języka Ruby, następnie Framework Ruby on Rails, dodatkowo będzie potrzebny Graphviz',
            description: 'Pierwsze kroki z ruby on rails',
            isHandBook: 1,
            title: 'Jak połączyć się do servera ruby on rails?'
        },
        {
            ID_User: users.last,
            ID_Role: roles.last,
            content: 'Nigdy wcześniej nie miałem styczności z komputerami, ale słyszałem, że budowanie komputerów to świetna zabawa!',
            description: 'Buduję swój pierwszy komputer, potrzebuję pomocy',
            isHandBook: 0,
            title: 'Jaki procesor do pierwszego komputera?'
        }
    ]
)

comments = Comment.create (
  [
      {
        ID_User: users.first,
        ID_ForumPost: forumPosts.first,
        content: 'jestes super!'
      },
      {
        ID_User: users.last,
        ID_ForumPost: forumPosts.first,
        content: 'Jestes zwyciezca!'
      },
      {
        ID_User: users.last,
        ID_ForumPost: forumPosts.last,
        content: 'Ten temat wymaga głebszęj analizy!'
      },
      {
        ID_User: users.first,
        ID_ForumPost: forumPosts.last,
        content: 'Moim zdaniem AMD wygrywa nad Intelem, ale to jest osobista preferencja.'
      }
  ]
)

repairOffers = RepairOffer.create(
    [
        {
            ID_User: users.first,
            ID_ForumPost: forumPosts.first,
            content: 'Oferujemy profesjonalne rozwiązania wykorzystujące Ruby',
            description: 'Serwery Ruby on Rails'
        },
    ]
)