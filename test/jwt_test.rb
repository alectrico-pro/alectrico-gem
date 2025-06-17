require "test_helper"

class Jwt < ActiveSupport::TestCase
  test "user app has set HMAC_SECRET" do
    assert HMAC_SECRET
  end
end
