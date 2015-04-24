class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  # include Mongoid::Attributes::Dynamic

  field :name, type: String
  field :desc, type: String
  field :released_on, type: Time
  field :_id, type: String, default: ->{ name.to_s.parameterize }

  validates :name, uniqueness: true

  embeds_many :reviews

end
