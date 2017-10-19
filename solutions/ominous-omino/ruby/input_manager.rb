class InputManager


  def initialize(file_name)
    File.open(file_name) do |file|
      if(@totalCases = file.gets)
        puts @totalCases
      end
      @cases = Array.new
      while line = file.gets
        @cases.push line
      end
    end
  end
  def getLine
    # @cases.pop
    while !@cases.empty?
      puts @cases.shift
    end
  end
end