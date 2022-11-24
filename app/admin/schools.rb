ActiveAdmin.register School do

  permit_params :name, :school_number
  
  filter :name

  # scope :all, default: true
  # scope "institution", :name

  menu label: "University"

  menu priority: 1

  # menu if: proc{ current_user? }

  # member_action :lock, method: :put do
  #   resource.lock!
  #   redirect_to lock_admin_school_path, notice: "Locked!"
  # end

  index do
    selectable_column
    column :name
  end
  
  index as: :grid do |school|
    link_to school.name, admin_school_path(school)
  end
  
  index as: :block do |school|
    div for: school do
      resource_selection_cell school
      h2  auto_link     school.name
    end
  end

  index as: :blog do
    :name
  end

end
