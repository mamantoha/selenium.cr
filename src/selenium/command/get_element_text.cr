class Selenium::Command::GetElementText
  def initialize(@driver : Driver::Getable, @session_id : SessionId)
  end

  def execute(element_id : ElementId) : String
    response_body = @driver.get("/session/#{@session_id}/element/#{element_id}/text")

    response_body["value"].as_s
  end
end
