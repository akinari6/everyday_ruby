def format_profile(name:, age:, occupation: nil)
  return "こんにちは、#{name}です。#{age}歳です。" if occupation.nil?

  "こんにちは、#{name}です。#{age}歳で、#{occupation}をしています。"
end
