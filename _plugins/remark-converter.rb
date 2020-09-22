module Jekyll
  class RemarkConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /^\.remark$/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      content
    end
  end
end
