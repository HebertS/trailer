require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "should not save message without user" do
    message = Message.new text: 'Something'
    assert_not message.save
  end

  test "should not save message without content" do
    message = Message.new user: users(:nick)
    assert_not message.save
  end

  test "should save message with content" do
    message = Message.new text: 'Something', user: users(:nick)
    assert message.save
  end

end
