require 'sinatra'
require 'make_todo'

get '/' do
  @tareas = Tarea.all
  erb:index
end


post '/new' do
  Tarea.create(params[:task])
  redirect '/'
end

post '/update' do
  Tarea.update(params[:hecho])
  redirect '/'
end
