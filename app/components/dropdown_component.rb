# FIXME

class DropdownComponent < ApplicationComponent
  def initialize(label: nil, options: nil, classes: nil, tone: "neutral", priority: "low")
    @label = label
    @options = options
    @class_names = classes
    @tone = fetch_or_fallback(TONE, "~#{tone}", "~neutral")
    @priority = fetch_or_fallback(PRIORITY, "!#{priority}", "!low")
  end

  private

  attr_reader :label, :options, :class_names, :tone, :priority

  def classes
    classes = ["button"]
    classes.push(tone, priority)
    classes.push(class_names) if class_names
    classes.compact
  end

  def render?
    label && options
  end
end
