def page_content(name)
    # File.read("pages/#{title}.txt")
    File.read("pages/#{name}.html")
rescue Errno::ENOENT
    return nil
end

# p page_content("charlie").split("\n")
p page_content("charlie")