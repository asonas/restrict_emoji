require "restrict_emoji/version"

class String
  def restrict_emoji(options = {})
    self.gsub(/[\u{1F600}-\u{1F6FF}]/, '')
  end
end
