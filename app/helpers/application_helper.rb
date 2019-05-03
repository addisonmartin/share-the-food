# frozen_string_literal: true

require 'navigation_helper.rb'
require 'pages_helper.rb'
require 'donations_helper.rb'

module ApplicationHelper
  include NavigationHelper
  include PagesHelper
  include DonationsHelper
end
