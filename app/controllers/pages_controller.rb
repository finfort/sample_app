class PagesController < ApplicationController
  def home
   @title="Home Controller"
  end

  def contact
    @title="Contact"
  end

  def about
    @title="About"
  end

  def help
    @title="Help"
  end
end
