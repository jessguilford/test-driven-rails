require 'rails_helper'
# unit testing
describe Todo, '#completed' do
  it 'returns true if completed_at is set' do
    todo = Todo.new(completed_at: Time.current)
    # this be_completed thing is automatically converted
    # from the above #completed
    expect(todo).to be_completed
  end
  it 'returns false if completed_at is nil' do
    todo = Todo.new(completed_at: nil)
    expect(todo).not_to be_completed
  end
end
