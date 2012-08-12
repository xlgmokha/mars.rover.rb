class CommandProcessor
  def initialize
    @commands = []
  end
  def add(command)
    @commands << command
  end
  def run
    while @commands.length > 0 do
      @commands.shift.run
    end
  end
end
