class Thought < ActiveRecord::Base
    attr_accessible :thought, :created_at

    validates :thought,   :presence => true

    belongs_to :user
    has_many :tags

    before_save :create_tags

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
