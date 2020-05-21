class TableComponent < ApplicationComponent
  with_content_areas :thead, :tbody

  def initialize(classes: nil)
    @class_names = classes
  end

  private

  attr_reader :class_names

  def classes
    classes = ["table"]
    classes.push(class_names) if class_names
    classes.compact
  end

  def render?
    thead.present? || tbody.present?
  end
end
