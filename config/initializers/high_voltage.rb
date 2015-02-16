# config/initializers/high_voltage.rb
HighVoltage.route_drawer = HighVoltage::RouteDrawers::Root
def index
    @recomendacaos = Recomendacao.all
    respond_with(@recomendacaos)
end