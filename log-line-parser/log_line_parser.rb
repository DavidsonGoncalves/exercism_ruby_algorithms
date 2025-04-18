class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    return @line.split(": ", 2).last.strip
  end

  def log_level
    msg = @line.split(": ", 2).first.strip
    return msg.delete("[]").downcase.strip
  end

  def reformat
    spt = @line.split(": ", 2)
    return spt.last.strip + spt.first.gsub("[", " (").gsub("]", ")").downcase
  end
end
