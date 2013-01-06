class CheerUpController < ApplicationController
    before_filter :authorized?

    def index
        @tags = Tag.select('DISTINCT tag').joins(:thought).where('user_id = ?', current_user.id)
    end
end
