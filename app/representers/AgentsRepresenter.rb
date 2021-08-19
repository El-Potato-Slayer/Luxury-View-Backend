class AgentsRepresenter
  def initialize(agents)
    @agents = agents
  end
  def as_json
    agents.map do |agent| 
      {
        id: agent.id,
        first_name: agent.first_name,
        last_name: agent.last_name,
        email: agent.email,
        number: agent.number,
        picture: agent.picture,
      }
    end
  end
  private
  attr_reader :agents
 end