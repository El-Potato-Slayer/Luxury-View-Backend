class AgentRepresenter
  def initialize(agent)
    @agent = agent
  end

  def as_json
    {
      id: agent.id,
      first_name: agent.first_name,
      last_name: agent.last_name,
      email: agent.email,
      number: agent.number,
      picture: agent.picture,
    }
  end

  private

  attr_reader :agent
end
