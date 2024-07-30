# frozen_string_literal: true

module TurboClone
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
