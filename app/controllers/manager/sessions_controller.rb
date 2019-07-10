module Manager
  class SessionsController < Devise::SessionsController

    def after_sign_in_path_for(resource)
      manager_root_path
    end

    def after_sign_out_path_for(resource)
      stored_location_for(resource) || new_admin_session_path
    end
  end
end