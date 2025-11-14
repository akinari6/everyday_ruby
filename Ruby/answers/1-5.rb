def get_user_name(user)
  user.fetch(:name, nil)
end

def get_nested_value(data)
  data.dig(:user, :profile, :email)
end

def add_tag(user, tag)
  user[:tags] ||= tag
end

user1 = { name: "田中太郎", age: 25 }
p get_user_name(user1)

user2 = { age: 30 }
p get_user_name(user2)

data1 = { user: { profile: { email: "test@example.com" } } }
p get_nested_value(data1)

data2 = { user: { profile: {} } }
p get_nested_value(data2)

user3 = { name: "佐藤", tags: ["ruby"] }
add_tag(user3, "rails")
p user3

user4 = { name: "鈴木" }
add_tag(user4, "beginner")
p user4
