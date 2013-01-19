class Thought < ActiveRecord::Base
    attr_accessible :thought, :created_at

    validates :thought,   :presence => true

    belongs_to :user
    has_many :tags

    before_save :create_tags

    def self.perspective(user_id, days_back)
        date = Date.today - days_back.days
        thought = Thought.where('user_id = ?', user_id).where('DATE(created_at) = ?', date)
    end

    protected

    def create_tags
        tags = self.thought.split(' ').select {|word| word.chars.first == '#'}

        for tag in tags do
            tag = strip_tag tag

            record = self.tags.find_or_create_by_tag(tag)

            record.save
        end
    end

    def strip_tag(tag)
        tag[1..-1]
    end
end
