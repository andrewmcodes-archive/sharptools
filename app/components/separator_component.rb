class SeparatorComponent < ApplicationComponent
  def initialize(height: 12)
    @height = height
  end

  def call
    tag.hr(class: classes)
  end

  private

  attr_reader :height

  def classes
    "sep h-#{height}"
  end
end
