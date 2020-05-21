class ContentComponent < ApplicationComponent
  def initialize(classes: nil)
    @class_names = classes
  end

  def call
    content_tag("section", class: classes) { content }
  end

  attr_reader :class_names

  def classes
    classes = ["content"]
    classes.push(class_names) if class_names
    classes.compact
  end

  def render?
    content
  end
end
