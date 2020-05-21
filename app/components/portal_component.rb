class PortalComponent < ApplicationComponent
  def initialize(url: nil, classes: nil, tone: "neutral", priority: "low")
    @url = url
    @class_names = classes
    @tone = fetch_or_fallback(TONE, "~#{tone}", "~neutral")
    @priority = fetch_or_fallback(PRIORITY, "!#{priority}", "!low")
  end

  def call
    link_to(content, url, class: classes)
  end

  attr_reader :url, :class_names, :tone, :priority

  def classes
    classes = ["portal"]
    classes.push(tone, priority)
    classes.push(class_names) if class_names
    classes.compact
  end

  def render?
    url
  end
end
