class Vehicle
  @@vehicles = []
  attr_reader(:make, :model, :year, :id, :vehicles)
  define_method(:initialize) do |attributes|
    @make = attributes.fetch(:make)
    @model = attributes.fetch(:model)
    @year = attributes.fetch(:year)
    @id = @@vehicles.length().+(1)
    @@vehicles.push(self)
  end
  define_singleton_method(:clear) do
    @@vehicles = []
  end
  define_singleton_method(:all_vehicles) do
    @@vehicles
  end
end