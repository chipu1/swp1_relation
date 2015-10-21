class Comment < ActiveRecord::Base
    belongs_to :blog #블로그는 하나이므로 단수로
end
