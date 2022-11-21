ActiveAdmin.register Student do
  permit_params :name, :student_number, :school_id

  # filter :student_number

  scope :all, default: true

  menu priority: 2

  # menu parent: ["student", "course"]

  # collection_action :import_csv, method: :post do
  #   redirect_to import_csv_admin_students_path notice: "CSV imported successfully!"
  # end

end
