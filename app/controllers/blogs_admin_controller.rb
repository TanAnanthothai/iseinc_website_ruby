class BlogsAdminController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  ==begin 
  http_basic_authenticate_with :name => "frodo", :password => "1234" 
  ==end

  def blogs_admin
    @blogs = Blog.all

  end
  
end
