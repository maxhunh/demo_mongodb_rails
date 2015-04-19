class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paranoia

  field :name, type: String
  field :desc, type: String
  field :released_on, type: Date
  field :_id, type: String, default: ->{ name.to_s.parameterize }

  validates :name, uniqueness: true

  embeds_many :reviews

end
