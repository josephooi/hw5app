class Singer < ActiveRecord::Base
  belongs_to :voice_part
  attr_accessible :name, :read, :voice_part_id

  def voice_part_name
    voice_part.name if voice_part
  end
end
