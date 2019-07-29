class Entry
  attr_reader :type, :date

  def initialize(type, time = Time)
    @type = type
    @date = time.new.strftime("%d/%m/%Y")
  end
end
