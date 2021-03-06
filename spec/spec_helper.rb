# This file was generated by the `rails generate rspec:install` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# The generated `.rspec` file contains `--require spec_helper` which will cause
# this file to always be loaded, without a need to explicitly require it in any
# files.
#
# Given that it is always loaded, you are encouraged to keep this file as
# light-weight as possible. Requiring heavyweight dependencies from this file
# will add to the boot time of your test suite on EVERY test run, even for an
# individual file that may not need all of that loaded. Instead, consider making
# a separate helper file that requires the additional dependencies and performs
# the additional setup, and require it from the spec files that actually need
# it.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration

require 'webmock/rspec'

RSpec.configure do |config|
  WebMock.disable_net_connect!(allow_localhost: true)

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, "https://payments.pabbly.com/api/v1/customer/5bbee98a458d576755a217d1").
      with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Authorization'=>'Basic Yjg0ZDljYzI4ZWYzZWRlMWYyMGE6', 'User-Agent'=>'Ruby'}).
      to_return(status: 200, body: {
        "status": "success",
        "message": "Customer data",
        "data": {
            "company_name": "test",
            "shipping_address": {},
            "createdAt": "2018-12-27T15:13:42.523Z",
            "updatedAt": "2018-12-27T15:13:42.523Z",
            "id": "5c24ec2665a9990bb78fc333",
            "first_name": "a",
            "last_name": "v",
            "email_id": "monika.kedrova@gmail.com",
            "billing_address": {},
            "client_portal": false
        }
      }.to_json, headers: {})
    end
  end
end
