require 'sinatra'
require 'make_todo'

get '/' do
  @tareas = Tarea.all
  @p = 0
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


post '/borrar' do
  Tarea.destroy(params[:borrar])
  redirect '/'
end
