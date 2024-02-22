require_relative '/Users/alex/workspace-3081/sa9-act2/Problem2/TodoList'
RSpec.describe TodoList do
  let(:todo_list) { TodoList.new }
  let(:todo) { "Buy milk" }

  describe "#add" do
    it "adds a todo to the list" do
      todo_list.add(todo)
      expect(todo_list.todos).to include(todo)
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todo_list.add(todo)
      todo_list.remove(todo)
      expect(todo_list.todos).not_to include(todo)
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todo_list.add(todo)
      expect(todo_list.todos).to eq([todo])
    end
  end
end
