class Post < ApplicationRecord
  before_action :logged_in?, only: %i[new create]
end
