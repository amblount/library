user_data = [
  {first_name: "alivia", last_name: "blount", email: "ablount@gmail.com", password: "alivia"},
  {first_name: "jermaine", last_name: "cole", email: "jcole@gmail.com", password: "jermaine"},
  {first_name: "usher", last_name: "raymond", email: "uraymond@gmail.com", password: "usher"}
]

User.create(user_data)

lib_data = [
  {name: "Berkeley Public Library",floor_count: 4, floor_area: 2234},
  {name: "Oakland Public Library, Main Branch",floor_count: 5, floor_area: 345},
  {name: "Lakeside, Oakland Public Library",floor_count: 6, floor_area: 2837},
  {name: "San Francisco Public Library",floor_count: 10, floor_area: 23947}
]

Liberry.create(lib_data)

lib_user_data = [
  {user_id: 1, liberry_id: 1},
  {user_id: 1, liberry_id: 2},
  {user_id: 1, liberry_id: 3},
  {user_id: 1, liberry_id: 4},
  {user_id: 2, liberry_id: 2},
  {user_id: 3, liberry_id: 3},
  {user_id: 2, liberry_id: 4},
  {user_id: 2, liberry_id: 3},
  {user_id: 2, liberry_id: 2},
  {user_id: 3, liberry_id: 2},
  {user_id: 3, liberry_id: 3},
  {user_id: 3, liberry_id: 4}
]

LiberryUser.create(lib_user_data)
