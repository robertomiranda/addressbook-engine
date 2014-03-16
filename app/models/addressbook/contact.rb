module Addressbook
  class Contact < ActiveRecord::Base
    belongs_to :owner, polymorphic: true
  end
end
