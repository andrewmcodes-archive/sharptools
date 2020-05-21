class CardComponent < ApplicationComponent
  def initialize(type: "div", content_only: false, classes: nil, tone: "neutral", priority: "low")
    @type = fetch_or_fallback(TYPE, type, "div")
    @content_only = content_only
    @class_names = classes
    @tone = fetch_or_fallback(TONE, "~#{tone}", "~neutral")
    @priority = fetch_or_fallback(PRIORITY, "!#{priority}", "!low")
  end

  def call
    content_tag(type, class: classes) { content }
  end

  private

  attr_reader :type, :content_only, :class_names, :tone, :priority

  TYPE = %w[alert div section]

  def classes
    classes = ["card"]
    classes.push(tone, priority)
    classes.push("content") if content_only
    classes.push(class_names) if class_names
    classes.compact
  end

  def render?
    content
  end
end
