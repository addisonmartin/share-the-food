# frozen_string_literal: true

# The top level, application wide record.
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
