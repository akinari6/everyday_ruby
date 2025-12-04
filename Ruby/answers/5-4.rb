module Timestampable
  attr_reader :created_at

  def set_timestamp
    @created_at = Time.now
  end
end

class Todo
  include Timestampable

  attr_reader :title
  attr_accessor :completed

  def initialize(title:)
    @title = title
    @completed = false
    set_timestamp()
  end

  def complete!
    @completed = true
  end

  def completed?
    @completed
  end

  def info
    status = completed? ? "完了" : "未完了"
    "[#{status}] #{title}"
  end
end

class TodoList
  attr_reader :name

  def initialize(name:)
    @name = name
    @todos = []
  end

  def add_todo(title)
    @todos << Todo.new(title: title)
  end

  def complete_todo(index)
    @todos[index].complete!
  end

  def all_todos
    @todos
  end

  def completed_todos
    @todos.select { |todo| todo.completed? }
  end

  def incomplete_todos
    @todos.select { |todo| !todo.completed? }
  end

  def summary
    total_count = @todos.size
    completed_count = completed_todos.size
    incomplete_count = incomplete_todos.size

    "#{name}: #{total_count}個のタスク（完了: #{completed_count}個、未完了: #{incomplete_count}個）"
  end
end

# TodoList の作成
list = TodoList.new(name: "今日のタスク")

# Todo の追加
list.add_todo("Ruby の勉強")
list.add_todo("買い物に行く")
list.add_todo("メールを返信")

# 全てのTodo
p list.all_todos.map(&:info)
# => ["[未完了] Rubyの勉強", "[未完了] 買い物に行く", "[未完了] メールを返信"]

# Todo の完了
list.complete_todo(0)  # 最初のTodoを完了
list.complete_todo(2)  # 3番目のTodoを完了

# 完了・未完了の確認
p list.completed_todos.map(&:info)
# => ["[完了] Rubyの勉強", "[完了] メールを返信"]

p list.incomplete_todos.map(&:info)
# => ["[未完了] 買い物に行く"]

# サマリー
p list.summary
# => "今日のタスク: 3個のタスク（完了: 2個、未完了: 1個）"

# 個別のTodoの確認
todo = list.all_todos.first
p todo.title
# => "Rubyの勉強"

p todo.completed?
# => true

p todo.created_at.class
# => Time
# 