ActiveAdmin.register School do

  permit_params :name, :student_number
  
  # filter :name

  # menu label: "University"

  menu priority: 1

  # menu if: proc{ current_user? }

  # member_action :lock, method: :put do
  #   resource.lock!
  #   redirect_to lock_admin_school_path, notice: "Locked!"
  # end
end
