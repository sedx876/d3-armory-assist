class UserBuildsController < ApplicationController

  # GET: /user_builds
  get "/user_builds" do
    erb :"/user_builds/index.html"
  end

  # GET: /user_builds/new
  get "/user_builds/new" do
    erb :"/user_builds/new.html"
  end

  # POST: /user_builds
  post "/user_builds" do
    redirect "/user_builds"
  end

  # GET: /user_builds/5
  get "/user_builds/:id" do
    erb :"/user_builds/show.html"
  end

  # GET: /user_builds/5/edit
  get "/user_builds/:id/edit" do
    erb :"/user_builds/edit.html"
  end

  # PATCH: /user_builds/5
  patch "/user_builds/:id" do
    redirect "/user_builds/:id"
  end

  # DELETE: /user_builds/5/delete
  delete "/user_builds/:id/delete" do
    redirect "/user_builds"
  end
end
