class HeadingComponent < ApplicationComponent
  def initialize(level: 3, sub: false, classes: nil, tone: "neutral", priority: "low")
    @level = fetch_or_fallback(LEVELS, "h#{level}", "h3")
    @sub = sub
    @class_names = classes
    @tone = fetch_or_fallback(TONE, "~#{tone}", "~neutral")
    @priority = fetch_or_fallback(PRIORITY, "!#{priority}", "!low")
  end

  def call
    content_tag(level, class: classes) { content }
  end

  private

  attr_reader :sub, :level, :class_names, :tone, :priority

  LEVELS = %w[h1 h2 h3 h4 h5 h6]

  def classes
    classes = sub ? ["subheading"] : ["heading"]
    classes.push(tone, priority)
    classes.push(class_names) if class_names
    classes.compact
  end

  def render?
    content
  end
end
