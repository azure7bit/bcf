RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.main_app_name = ["Bandung Coffee Festival 2014", "Admin"]
  config.main_app_name = Proc.new { |controller| [ "Bandung Coffee Festival 2014", "Admin - #{controller.params[:action].try(:titleize)}" ] }

  config.authenticate_with do
    warden.authenticate! scope: :admin
  end

  config.authorize_with do
    redirect_to main_app.new_admin_session_path unless current_admin
  end

  config.current_user_method(&:current_admin)

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model Article do
    edit do
      field :title
      field :body
      field :picture
    end
  end
end
