require 'rails_helper'

describe "#completed?" do

  it "returns true if completed_at is set" do
    todo = Todo.new(completed_at: Time.current)
    expect(todo).to be_completed
  end

  it "returns false if completed_at is nil" do
    todo = Todo.new(completed_at: nil)
    expect(todo).not_to be_completed
  end

end

describe "#completed!" do
  it "update completed_at" do
    todo = Todo.create!(completed_at: nil)
    todo.completed!
    todo.reload
    expect(todo).to be_completed
  end

end
