class BuildsController < ApplicationController

  # GET: /builds
  get "/builds" do
    erb :"/builds/index.html"
  end

  # GET: /builds/new
  get "/builds/new" do
    erb :"/builds/new.html"
  end

  # POST: /builds
  post "/builds" do
    redirect "/builds"
  end

  # GET: /builds/5
  get "/builds/:id" do
    erb :"/builds/show.html"
  end

  # GET: /builds/5/edit
  get "/builds/:id/edit" do
    erb :"/builds/edit.html"
  end

  # PATCH: /builds/5
  patch "/builds/:id" do
    redirect "/builds/:id"
  end

  # DELETE: /builds/5/delete
  delete "/builds/:id/delete" do
    redirect "/builds"
  end
end
