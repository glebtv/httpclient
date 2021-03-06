# coding: utf-8

class BaseServer
  attr_accessor :server, :port, :logger, :io
  
  def u(str = '')
    "http://localhost:#{@port}/#{str}"
  end
  
  def set_logger
    @io = StringIO.new
    @logger = Logger.new(@io)
    @logger.level = Logger::Severity::DEBUG
  end
  
  def start
    @port = @server.config[:Port]
    @thread = start_server_thread(@server)
  end
  
  def start_server_thread(server)
    t = Thread.new {
      Thread.current.abort_on_exception = true
      server.start
    }
    while server.status != :Running
      Thread.pass
      unless t.alive?
    t.join
    raise
      end
    end
    t
  end
  
end