require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  # code!
  @states = Array.new
  
  @state = {}
  @state[:id] = "MO"
  @state[:name] = "Missouri"
  @states << @state
  
  @state = {}
  @state[:id] = "IN"
  @state[:name] = "Indiana"
  @states << @state
  
  @state = {}
  @state[:id] = "MI"
  @state[:name] = "Michigan"
  @states << @state
  
  @state = {}
  @state[:id] = "IL"
  @state[:name] = "Illinois"
  @states << @state
  
  @state = {}
  @state[:id] = "KS"
  @state[:name] = "Kansas"
  @states << @state

  @states.sort_by!{ | s | s[:name] }


  erb :states, layout: :main
end
