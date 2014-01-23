class StaticController < ApplicationController
  layout false

  def ember_shop
    if spree_current_user.nil?
      flash[:error] = "You should be authenticated before using the Ember application!"
      redirect_to spree.login_path
    end
  end
end
