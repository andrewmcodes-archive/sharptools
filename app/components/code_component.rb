class CodeComponent < ApplicationComponent
  def initialize(classes: nil)
    @class_names = classes
  end

  def call
    content_tag("code", class: classes) { content }
  end

  private

  attr_reader :class_names

  def classes
    classes = ["code"]
    classes.push(class_names) if class_names
    classes.compact
  end

  def render?
    content
  end
end
