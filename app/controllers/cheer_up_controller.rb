class CheerUpController < ApplicationController
    def index
        @tags = Tag.select('DISTINCT tag')
    end
end
