class MetalLibsController
  require_relative '../../lib/holy_diver.rb'
  require_relative '../../lib/run_to_the_hills.rb'
  require_relative '../../lib/the_trees.rb'
  # include Formatter
  attr_accessor :user_selection


  def clear_table
    MetalLib.destroy_all
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


  def song_select
    puts <<-eos
        1) "Holy Diver"
        2) "Run To The Hills"
        3) "The Trees"
    eos
    print "Please select a song: "
    @user_selection = gets.strip
    return @user_selection
  end

  def song_run(user_selection)
    user_selection = @user_selection
    if user_selection.length > 1
        return ArgumentError, "You must select a number between 1 and 3"
    elsif user_selection.to_i == 1
        holy_diver
    elsif user_selection.to_i == 2
        run_to_the_hills
    elsif user_selection.to_i == 3
        the_trees
    else
        return ArgumentError, "Please select a number between 1 and 3"
    end
  end

  def colorize(text, color_code)
  "\e[#{color_code}m#{text}\e[0m"
  end

  def blue(text); colorize(text, 34); end

  private

  def params
    @params
  end
end