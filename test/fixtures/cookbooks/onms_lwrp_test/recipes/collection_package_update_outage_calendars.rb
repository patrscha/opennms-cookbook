# frozen_string_literal: true
include_recipe 'onms_lwrp_test::collection_package'
opennms_collection_package 'foo' do
  filter "IPADDR != '1.1.1.1' & categoryName == 'update_foo'"
  outage_calendars ['update localhost on tuesday']
  notifies :restart, 'service[opennms]', :delayed
end
