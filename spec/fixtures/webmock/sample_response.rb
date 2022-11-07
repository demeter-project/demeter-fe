require_relative 'plot_index'
require_relative 'garden_show'
require_relative 'plot_show'
require_relative 'plant_index'
require_relative 'plot_plant_index'
require_relative 'plot_plant_create'
require_relative 'new_plot_plants'

module SampleResponses
  include GardenShowResponse
  include PlotIndexResponse
  include PlotShowResponse
  include PlantIndexResponse
  include PlotPlantIndexResponse
  include PlotPlantCreateResponse
  include NewPlotPlantsResponse
end