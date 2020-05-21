class ButtonComponent < ApplicationComponent
  def initialize(field: false, type: "button", classes: nil, tone: "neutral", priority: "low")
    @field = field
    @type = fetch_or_fallback(TYPE, type, "button")
    @class_names = classes
    @tone = fetch_or_fallback(TONE, "~#{tone}", "~neutral")
    @priority = fetch_or_fallback(PRIORITY, "!#{priority}", "!low")
  end

  def call
    button_tag(type: type, class: classes) { content }
  end

  private

  attr_reader :type, :field, :class_names, :tone, :priority

  TYPE = %w[button reset]

  def classes
    classes = ["button"]
    classes.push(field) if field
    classes.push(tone, priority)
    classes.push(class_names) if class_names
    classes.compact
  end

  def render?
    content
  end
end
