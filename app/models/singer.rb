  class Singer < ActiveRecord::Base
  belongs_to :voice_part
  attr_accessible :name, :read, :voice_part_id

  validates :name, presence: true, uniqueness: true, :length => { :in => 2..50 },
            :format => { :with => /[a-zA-Z\s]/, :message => "Only letters allowed" }

  def voice_part_name
    voice_part.name if voice_part
  end
end
