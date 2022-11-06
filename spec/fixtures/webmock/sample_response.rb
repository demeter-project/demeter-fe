require_relative 'plot_index'
require_relative 'garden_show'
require_relative 'plot_show'
require_relative 'plant_index'
require_relative 'plot_plant_index'

module SampleResponses
  include GardenShowResponse
  include PlotIndexResponse
  include PlotShowResponse
  include PlantIndexResponse
  include PlotPlantIndexResponse
end