class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about_us tips contact]

  def home
    @company = Company.all
  end
end
