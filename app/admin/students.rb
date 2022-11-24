ActiveAdmin.register Student do
  permit_params :name, :student_number, :school_id, :course

  filter :student_number

  scope :all, default: true

  menu priority: 2

  config.sort_order = "name_asc"

  # menu parent: ["student", "course"]

  # collection_action :import_csv, method: :post do
  #   redirect_to import_csv_admin_students_path(:id), notice: "CSV imported successfully!"
  # end

  index do
    selectable_column 
    column :id
    column :name
    column :student_number
    column :course
    column " " do |student|
      link_to "View", admin_student_path(student)
    end
  end
  
  index as: :grid do |student|
    link_to student.name, admin_student_path(student)
  end
  
  index as: :block do |student|
    div for: student do
      resource_selection_cell student
      h2  auto_link     student.name
      h4 simple_format student.student_number
    end
  end

  index as: :blog do
    :name
  end
  
  
end
