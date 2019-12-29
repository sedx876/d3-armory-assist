class BuildsController < ApplicationController

  get '/builds/new' do
    erb :'/builds/new'
  end

  post '/builds' do
    build = current_user.builds.build(params)
    if !build.title.empty?
      build.save 
      redirect '/builds'
    else
      @error = "Entry invalid, Please Try Again"
      erb :'/builds/new'
    end
  end

  get '/builds' do
    @builds = Build.all.reverse
    erb :'builds/index'
  end

  get '/builds/:id' do
    @build = Build.find_by(id: params[:id])
    if @build
      erb :'builds/show'
    else
      redirect '/builds'
    end
  end

  get '/builds/:id/edit' do
    if logged_in?
      @build = Build.find(params[:id])
      erb :'/builds/edit'
    else
      redirect '/login'
    end
  end

  patch '/builds/:id' do
    @build = Build.find(params[:id])
    @build.update(params["build"])
    redirect "/builds/#{params[:id]}"
  end

  delete '/builds/:id' do
    build = Build.find(params[:id])
    build.destroy
    redirect '/builds'
  end
end
