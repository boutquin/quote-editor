class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Add this line to see the progress bar long enough
  # and remove it when it has the expected styles
  # before_action -> { sleep 3 }
end
