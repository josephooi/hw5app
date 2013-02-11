class Conflict < ActiveRecord::Base
  belongs_to :singer
  attr_accessible :date, :end, :reason, :start, :type_of_conflict, :singer_id

  def singer_name
    singer.name if singer
  end
end
