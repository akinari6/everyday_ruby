MESSAGE_FOR_UNDERAGE = "未成年のためアクセスできません"
MESSAGE_FOR_NON_MEMBER = "会員登録が必要です"
MESSAGE_ACCESS_ALLOWED = "アクセスが可能です"

def check_access(age:, is_member:)
  return MESSAGE_FOR_UNDERAGE if age < 18
  return MESSAGE_FOR_NON_MEMBER unless is_member

  MESSAGE_ACCESS_ALLOWD
end
