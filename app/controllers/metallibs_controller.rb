class MetalLibsController
  # include Formatter

  def initialize params
    @params = params
  end

  def index
    projects = MetalLib.all
    projects.each_with_index do |project, i|
      puts "#{i+1}. #{project.name}"
    end
  end

  def create
    project = MetalLib.new(params[:project])
    if project.save
      puts "Success!"
    else
      puts "Failure :( #{metal_lib.errors.full_messages.join(", ")}"
    end
  end

  def destroy
    matching_projects = MetalLib.where(name: params[:project][:name]).all
    matching_projects.each do |project|
      project.destroy
    end
  end

  def clear_table
    matching_metal_libs = MetalLib.all? { |metal_lib|  }
    matching_metal_libs.each do |metal_lib|
        metal_lib.destroy
    end
  end

  def pluck(column_name)
      if column_name.is_a?(Symbol) && column_names.include?(column_name.to_s)
        column_name = "#{connection.quote_table_name(table_name)}.#{connection.quote_column_name(column_name)}"
      else
        column_name = column_name.to_s
      end

      relation = clone
      relation.select_values = [column_name]
      klass.connection.select_all(relation.arel).map! do |attributes|
        klass.type_cast_attribute(attributes.keys.first, klass.initialize_attributes(attributes))
      end
  end

  private

  def params
    @params
  end
end