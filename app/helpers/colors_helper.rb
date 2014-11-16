module ColorsHelper
  def format_code(color)
    return nil if color.code.nil?
    color.code.gsub(/^#/, '').downcase
  end

  def format_weight(color)
    ""#sprintf("%02d", color.weight)
  end
end
