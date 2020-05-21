class BadgeComponent < ApplicationComponent
  def initialize(classes: nil, tone: "neutral", priority: "normal")
    @class_names = classes
    @tone = fetch_or_fallback(TONE, "~#{tone}", "~neutral")
    @priority = fetch_or_fallback(PRIORITY, "!#{priority}", "!normal")
  end

  def call
    content_tag("span", class: classes) { content }
  end

  private

  attr_reader :class_names, :tone, :priority

  def classes
    classes = ["badge"]
    classes.push(tone, priority)
    classes.push(class_names) if class_names
    classes.compact
  end

  def render?
    content
  end
end
