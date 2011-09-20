String.class_eval do
  def to_sqwak
    "sqwak #{self}".strip
  end
end