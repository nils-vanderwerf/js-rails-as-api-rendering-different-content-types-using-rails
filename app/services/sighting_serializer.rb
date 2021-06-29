class SightingSerializer
    def to_serialized_json 
    options = {
    include => {
        :bird => {
            :only => 
            [:name, :species, :id]},
        {
        :location => {
            :only => 
            [:name, :species, :id]},
        {
        :sighting => {:only => [:name, :species, :id]}
    })
    }
    end
end