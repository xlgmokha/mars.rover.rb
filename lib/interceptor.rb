class Interceptor
  def initialize(command, interceptor)
    @command = command
    @interceptor = interceptor
  end
  def run
    @interceptor.call(@command)
  end
end
