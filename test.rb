def page_content(name)
    # goes to the file path and reads the text:
    File.read("pages/#{name}.html")
rescue Errno::ENOENT
    return nil
end

# testing if page_content function is working:
# p page_content("charlie").split("\n")
# p page_content("charlie")