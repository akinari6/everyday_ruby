def find_user_by_id(users, id)
  users.find { |user| user.id == id}
end

def filter_adults(users)
  users.select { |user| user.age >= 20 }
end

def has_admin?(users)
  users.any? { |user| user[:role] == :admin}
end