require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "order_received" do
    mail = Notifier.order_received(orders(:one))
    assert_equal "Foxy store", mail.subject
    assert_equal ["yekaterina@example.org"], mail.to
    assert_equal ["yekaterina.zhmud@gmail.com"], mail.from
    assert_match "lalala", mail.body.encoded
  end

  test "order_shipped" do
    mail = Notifier.order_shipped(orders(:one))
    assert_equal "Foxy store", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["yekaterina.zhmud@gmail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
